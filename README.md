# Dash Campanha Aniversário Blessy

Dashboard de execução da Campanha de Aniversário Blessy no TikTok Shop (Dia das Mães + 5.5 + Aniversário Blessy).

- **Período:** 30/04 → 12/05/2026 (13 dias de campanha ativa)
- **Boletim diário:** 30/04 → 16/05 (17 dias)
- **OKR:** R$ 250.000 (50% da meta de Maio)
- **Stack:** HTML único, sem build, conectado ao Supabase via anon key

## Mecânica de Aniversário

- 2 sachês de brinde em toda compra pelo vídeo
- Flash sales com 4 sachês em janelas relâmpago

## Corridinha de GMV (não acumulativa)

| Nível | GMV | Prêmio |
|-------|-----|--------|
| 🥉 Bronze | R$ 15k | R$ 500 PIX + Café da manhã by Blessy |
| 🥈 Prata | R$ 40k | R$ 1.000 PIX + Jantar especial Blessy |
| 🥇 Ouro | R$ 100k | R$ 2.500 PIX + Dia com a Renata no Rio |

## Setup Supabase

Antes de subir, rodar no SQL editor:

1. `migration_relatorio_maio_2026.sql` — alimenta o Tracker
2. `migration_boletim_maio_2026.sql` — alimenta os boletins

## Time

| Pessoa | Responsabilidade |
|--------|------------------|
| Felipe | Estratégia, OKR, dashboard, lives 19–20h |
| Isabel | Análise, GMV Max, lança relatório (aba 08) |
| Carol | Boletins diários, cadência creators, Corridinha |
| Renata Lima | Sprints de vídeo, lives 11/05 e 12/05 |
