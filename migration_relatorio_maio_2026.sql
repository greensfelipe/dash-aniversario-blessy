-- ============================================================
-- Migration: relatorio_maio_2026
-- Dashboard: Campanha Maio (Dia das Mães + 5.5) — TikTok Shop Blessy
-- Tabela alimentada por Isabel (aba 08) e lida pelo Tracker (aba 07)
-- 13 dias de campanha ativa: D1 (30/04 Qua) → D13 (12/05 Seg)
-- ============================================================

create table public.relatorio_maio_2026 (
  id                      bigint generated always as identity primary key,
  dia                     integer       not null unique check (dia between 1 and 13),
  data                    date          not null,
  meta                    numeric(10,2),
  gmv_total               numeric(10,2) not null,
  videos_publicados       integer,
  lives_realizadas        integer,
  video_top_retencao_hook text,
  video_top_gmv           text,
  contingencia_acionada   boolean       not null default false,
  observacoes             text,
  created_at              timestamptz   not null default now(),
  updated_at              timestamptz   not null default now()
);

-- A função public.set_updated_at() já existe (criada pela migration do war-room-44).
-- Caso este projeto use outro Supabase, descomente o bloco abaixo:
-- create or replace function public.set_updated_at()
-- returns trigger language plpgsql as $$
-- begin
--   new.updated_at = now();
--   return new;
-- end;
-- $$;

create trigger trg_relatorio_maio_2026_updated_at
  before update on public.relatorio_maio_2026
  for each row execute procedure public.set_updated_at();

-- ── Row Level Security ───────────────────────────────────────────
-- O dashboard usa a anon key para ler e escrever (ferramenta interna)

alter table public.relatorio_maio_2026 enable row level security;

create policy "anon_select"
  on public.relatorio_maio_2026 for select
  to anon
  using (true);

create policy "anon_insert"
  on public.relatorio_maio_2026 for insert
  to anon
  with check (true);

create policy "anon_update"
  on public.relatorio_maio_2026 for update
  to anon
  using (true);

create policy "anon_delete"
  on public.relatorio_maio_2026 for delete
  to anon
  using (true);
