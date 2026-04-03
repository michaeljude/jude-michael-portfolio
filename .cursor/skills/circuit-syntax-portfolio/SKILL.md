---
name: circuit-syntax-portfolio
description: Applies the Google Stitch design system "Circuit & Syntax" and Jude Michael portfolio conventions when styling UI, theme tokens, or Stitch-linked work. Use when editing Flutter presentation, `lib/app/theme`, portfolio layout, or when the user mentions Stitch, Circuit & Syntax, or the Digital Blueprint aesthetic.
---

# Circuit & Syntax — Jude Michael Portfolio

## Source of truth

- **Design system name (Stitch):** Circuit & Syntax (`displayName` on the project design-system asset).
- **Stitch asset:** `assets/549a4f0a381046a4b7f454dd05efafd0`
- **Stitch project:** Jude Michael Portfolio — project id **`15785731210514207986`** (use without `projects/` prefix in MCP args that expect `projectId`).
- **Authoritative tokens in Stitch:** call MCP `list_design_systems` with `projectId` above; screens: `list_screens` with the same id.

## Flutter mapping in this repo

- **Colors / scheme:** `lib/app/theme/color_tokens.dart` — comments already tie each color to Stitch `namedColors`; extend or change UI colors here, not ad hoc literals.
- **Theme wiring:** `lib/app/theme/app_theme.dart` (Material 3 dark, no-line-friendly divider theme, chips, inputs).
- **Typography:** `lib/app/theme/text_styles.dart` — Space Grotesk (display) + Inter (body) per the system.
- **Spacing / radii:** `lib/app/theme/spacing.dart`, `lib/app/theme/radii.dart` — align section gaps with the spec (large vertical rhythm between major sections).

## Creative direction (keep short)

- **North star:** “The Digital Blueprint” — premium, technical, editorial; feels like a precise IDE for the web, not a generic template.
- **Style:** Organic Brutalism — strict grids + fluid motion and layered surfaces; **intentional asymmetry** (e.g. display type not always centered).
- **Accents:** Electric emerald primary (`#00E676` seed / `#3FFF8B` primary in tokens), cyber blue secondary; dark nocturnal base `#0E0E0E`.

## Rules to enforce in UI code

1. **No-line rule:** Prefer **chromatic shifts** between `surface` and `surface-container-low` (and related surfaces) instead of heavy dividers; avoid solid 1px borders for sectioning.
2. **Surface stack:** `surface` → `surface-container-low` (sections) → `surface-container` (cards) → `surface-container-highest` (elevated / floating).
3. **Glass:** For nav or floating panels, favor `surface-variant` with **~60% opacity** and **~24px** backdrop blur when implementing glass surfaces.
4. **CTAs:** Primary actions can use **gradient** from `primary` to `primaryContainer` (`AppColorTokens.primaryGradient`).
5. **Code / snippet blocks:** Prefer `surfaceContainerLowest`; border `outlineVariant` at **~20%** opacity; syntax emphasis colors align with **secondary**, **tertiary**, **error** family — not random palette colors.
6. **Cards:** `surfaceContainer`, generous padding; interactive hover/focus: shift toward `surfaceContainerHigh` and subtle scale (~**1.02**).
7. **Chips / tags:** Pill shapes; secondary container family for “building block” tech tags.
8. **Shadows:** Prefer **primary-tinted** ambient glow (e.g. low-opacity primary), not flat grey shadows.
9. **Motion:** When defining animation curves, prefer **spring-like** feel (spec suggests damping ~20, stiffness ~90) over linear easing for primary interactions.
10. **Forms / accessibility:** If a visible boundary is required, **ghost** border: `outlineVariant` at **~15%** opacity.

## App structure (Flutter routes)

Shell + tabs (`lib/app/router/app_router.dart`): **Home** (`/`), **Projects** (`/projects`), **Experience** (`/experience`), **Skills** (`/skills`), **Contact** (`/contact`). Unknown paths redirect to `/`.

## Bloc

When using Bloc, prefer **BlocSelector** for granular rebuilds on specific state fields (per project rules).

## Full markdown spec and token tables

For the complete written design system (all sections) and extended color/token reference, read [reference.md](reference.md).
