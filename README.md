# Receituário Rápido

Ferramenta pessoal da Dra. Anna para montar receitas pediátricas com cálculo de dose pelo peso e copiar para o sistema (Fast / hospital).

- `index.html` — o site inteiro. `config.js` — endereço do Supabase e chave pública (anon), protegida pelo RLS.
- `netlify.toml` — publica a pasta como está (sem build) e adiciona cabeçalhos de segurança.
- `supabase.sql` — tabelas `revisao` e `meus` com RLS (cada usuária só vê as próprias linhas).

Não guarda dados de pacientes. Conteúdo clínico (doses) só muda com aprovação da Dra. Anna.

Site: https://receituario-rapido.netlify.app
