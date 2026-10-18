-- Receituário Rápido: tabelas da usuária (rodar uma vez no SQL Editor do Supabase)
create table if not exists public.revisao (
  user_id uuid not null references auth.users(id) on delete cascade,
  id text not null,
  data jsonb not null default '{}'::jsonb,
  atualizado_em timestamptz not null default now(),
  primary key (user_id, id)
);
create table if not exists public.meus (
  user_id uuid not null references auth.users(id) on delete cascade,
  id text not null,
  data jsonb not null default '{}'::jsonb,
  atualizado_em timestamptz not null default now(),
  primary key (user_id, id)
);
alter table public.revisao enable row level security;
alter table public.meus enable row level security;
-- cada pessoa só vê e altera as próprias linhas
create policy "revisao_dono" on public.revisao for all to authenticated
  using (user_id = auth.uid()) with check (user_id = auth.uid());
create policy "meus_dono" on public.meus for all to authenticated
  using (user_id = auth.uid()) with check (user_id = auth.uid());
grant select, insert, update, delete on public.revisao, public.meus to authenticated;
