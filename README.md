# Receituário Rápido

Ferramenta pessoal da Dra. Anna para montar receitas pediátricas com cálculo de dose pelo peso e copiar para o sistema (Fast / hospital).

- `index.html` — o site inteiro (sem etapa de build além de gerar `config.js`).
- `netlify.toml` — a Netlify gera `config.js` com as variáveis `SUPABASE_URL` e `SUPABASE_ANON_KEY` cadastradas no painel (nunca no Git).
- `supabase.sql` — tabelas `revisao` e `meus` com RLS (cada usuária só vê as próprias linhas).

Não guarda dados de pacientes. Conteúdo clínico (doses) só muda com aprovação da Dra. Anna.
