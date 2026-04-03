# Circuit & Syntax — reference

## Stitch MCP quick reference

| Item | Value |
|------|--------|
| Project display title | Jude Michael Portfolio |
| `projectId` | `15785731210514207986` |
| Design system asset | `assets/549a4f0a381046a4b7f454dd05efafd0` |
| Design system display name | **Circuit & Syntax** |

Tools: `list_design_systems` ({ `"projectId": "15785731210514207986"` }), `list_screens`, `get_project` (`projects/15785731210514207986`).

## Theme metadata (Stitch)

- `projectType`: TEXT_TO_UI_PRO  
- `deviceType`: DESKTOP  
- `colorMode`: DARK  
- `colorVariant`: VIBRANT  
- `headlineFont`: SPACE_GROTESK  
- `bodyFont` / `labelFont`: INTER  
- `roundness`: ROUND_FOUR  
- `spacingScale`: 3  
- `customColor` / `overridePrimaryColor`: `#00E676`  
- `overrideSecondaryColor`: `#2979FF`  
- `overrideNeutralColor`: `#121212`  

## namedColors (Stitch → hex)

Use these when syncing `AppColorTokens` or validating Figma/Stitch exports.

| Token | Hex |
|-------|-----|
| background | #0e0e0e |
| error | #ff716c |
| error_container | #9f0519 |
| error_dim | #d7383b |
| inverse_on_surface | #565555 |
| inverse_primary | #006e35 |
| inverse_surface | #fcf9f8 |
| on_background | #ffffff |
| on_error | #490006 |
| on_error_container | #ffa8a3 |
| on_primary | #005d2c |
| on_primary_container | #004f24 |
| on_primary_fixed | #004820 |
| on_primary_fixed_variant | #006832 |
| on_secondary | #001d4e |
| on_secondary_container | #f7f7ff |
| on_secondary_fixed | #003076 |
| on_secondary_fixed_variant | #004baf |
| on_surface | #ffffff |
| on_surface_variant | #adaaaa |
| on_tertiary | #005360 |
| on_tertiary_container | #004955 |
| on_tertiary_fixed | #00343d |
| on_tertiary_fixed_variant | #005361 |
| outline | #767575 |
| outline_variant | #484847 |
| primary | #3fff8b |
| primary_container | #13ea79 |
| primary_dim | #24f07e |
| primary_fixed | #3fff8b |
| primary_fixed_dim | #24f07e |
| secondary | #6e9bff |
| secondary_container | #0058ca |
| secondary_dim | #0f6df3 |
| secondary_fixed | #c0d1ff |
| secondary_fixed_dim | #acc3ff |
| surface | #0e0e0e |
| surface_bright | #2c2c2c |
| surface_container | #1a1a1a |
| surface_container_high | #20201f |
| surface_container_highest | #262626 |
| surface_container_low | #131313 |
| surface_container_lowest | #000000 |
| surface_dim | #0e0e0e |
| surface_tint | #3fff8b |
| surface_variant | #262626 |
| tertiary | #7ae6ff |
| tertiary_container | #00dcfd |
| tertiary_dim | #00cdec |
| tertiary_fixed | #00dcfd |
| tertiary_fixed_dim | #00cdec |

## Design system document (Stitch `designMd`)

The following is the full narrative spec for **The Architect’s Portfolio** / Circuit & Syntax.

# Design System Document: The Architect’s Portfolio

## 1. Overview & Creative North Star

**Creative North Star: "The Digital Blueprint"**

The objective of this design system is to mirror the precision of "Clean Architecture" within a high-end editorial digital experience. Jude Michael’s portfolio must not look like a template; it must feel like a custom-built IDE for the web. We achieve this through **Organic Brutalism**—a style that utilizes rigid structural layouts (grids) softened by fluid, high-fidelity motion and sophisticated tonal layering.

To break the "standard" portfolio look, we employ **Intentional Asymmetry**. Large-scale display typography will often sit off-center, balanced by high-density technical data or code snippets. The experience should feel authoritative, technical, and premium.

---

## 2. Colors & Surface Philosophy

The palette is rooted in a deep, nocturnal base (`#0e0e0e`) to allow the high-contrast "Electric Emerald" and "Cyber Blue" accents to vibrate with energy.

### The "No-Line" Rule

Traditional borders are forbidden for sectioning. We define space through **Chromatic Shifts**. To separate a hero section from a project gallery, transition from `surface` to `surface-container-low`. The eye should perceive a change in depth, not a hard stop.

### Surface Hierarchy & Nesting

Treat the UI as a series of nested architectural plates:

1. **Base Layer:** `surface` (#0e0e0e) – The foundation.
2. **Section Layer:** `surface-container-low` (#131313) – Large content blocks.
3. **Component Layer:** `surface-container` (#1a1a1a) – Cards and interactive modules.
4. **Floating Layer:** `surface-container-highest` (#262626) – Modals and pop-overs.

### The "Glass & Gradient" Rule

To inject "soul" into the tech-heavy aesthetic:

- **Glassmorphism:** Navigation bars and floating action cards must use `surface-variant` at 60% opacity with a `24px` backdrop blur.
- **Signature Accents:** Use a linear gradient (`primary` to `primary-container`) for high-level CTAs to simulate a glowing "active state" reminiscent of high-end mobile UI.

---

## 3. Typography: Editorial Technicality

We pair **Space Grotesk** (Display) with **Inter** (Interface) to balance personality with extreme legibility.

- **Display (Space Grotesk):** Set with tight tracking (-2%) for a bold, technical "header" feel. Use `display-lg` for Jude Michael’s name and key project titles to command attention.
- **Body & Labels (Inter):** High-readability sans-serif for technical descriptions. `body-md` is the workhorse for project case studies.
- **Hierarchy as Brand:** Use `primary` color for `label-md` to highlight tech stacks (e.g., "SWIFTUI", "KOTLIN"), creating a rhythmic "scanning" experience for recruiters.

---

## 4. Elevation & Depth

We eschew traditional shadows for **Tonal Layering** and **Luminescent Ambient Shadows**.

- **The Layering Principle:** A code snippet card (`surface-container-high`) sitting on a section (`surface-container-low`) creates natural lift. No shadow required.
- **Ambient Glow:** For floating elements, use a shadow with a `48px` blur, `0%` spread, and color `primary` at `8%` opacity. This mimics the light emitted from a screen, reinforcing the "Mobile Engineer" identity.
- **Ghost Borders:** If a boundary is required for accessibility in forms, use `outline-variant` at `15%` opacity. It should be felt, not seen.

---

## 5. Components

### Buttons (Architectural Actions)

- **Primary:** Background `primary`, text `on-primary`. Radius: `md` (0.375rem). No border.
- **Secondary:** Background `secondary_container`, text `on_secondary_container`.
- **Tertiary:** Transparent background, `primary` text. No container.

### The Code Snippet Block (Signature Component)

Unlike standard blocks, these should use `surface-container-lowest` (pure black) to contrast against the `surface` background. Use a `sm` (0.125rem) `outline-variant` border at 20% opacity. Syntax highlighting must utilize `secondary`, `tertiary`, and `error_dim` for a cohesive brand look.

### Cards & Projects

- **Rule:** No divider lines.
- **Structure:** Use `surface-container` with `xl` (0.75rem) padding.
- **Interaction:** On hover, the card should shift from `surface-container` to `surface-container-high` and scale by 1.02x.

### Chips (Tech Stack Tags)

Small, pill-shaped (`full` roundedness) using `secondary_container` with `on_secondary_container` text. These represent the "building blocks" of Jude’s expertise.

---

## 6. Do’s and Don’ts

### Do:

- **Embrace the Grid:** Use subtle `outline-variant` (5% opacity) grid lines in the background of the Hero section to evoke a "blueprint" feel.
- **Whitespace is Architecture:** Use `64px` to `128px` of vertical spacing between major sections. Clean architecture requires room to breathe.
- **High-Contrast Accents:** Use `primary` (Electric Green) sparingly—only for primary actions, active states, and success indicators.

### Don’t:

- **No Solid Borders:** Never use a 100% opaque 1px border. It looks "bootstrapped" and cheap.
- **No Pure Grey Shadows:** Shadows must always be tinted with the `primary` or `surface-tint` color to maintain the nocturnal atmosphere.
- **No Center-Alignment only:** Avoid making every section centered. Use left-aligned typography paired with right-aligned imagery or code for a sophisticated editorial flow.

---

## 7. Interaction Note

Every click and transition should feel like a high-performance mobile app. Use **Spring Physics** for transitions (Damping: 20, Stiffness: 90) rather than linear eases. When the user hovers over a "Clean Architecture" diagram, use a `primary` glow to highlight the flow of data.

## Stitch screens (typical titles)

Screens in this project are not named "Circuit & Syntax"; that name applies to the **design system asset**. Page-level screens have included titles such as:

- Home - Jude Michael Portfolio  
- Projects & Experience / Improved Projects & Experience  
- Skills & Expertise  
- Contact Jude Michael  
- Jude Michael Portfolio PRD  

Confirm current list with `list_screens` for project `15785731210514207986`.
