# Reglas de Canon — Corazones en Ebullición

## Fuente de verdad

1. Única fuente: `CORAZONES EN EBULLICIÓn RUTA HAREM CHECK 1 (1).xml` / `.docx`.
2. Los archivos de esta Bible son **derivados**; nunca modifican ni reemplazan el texto original.
3. En conflicto entre archivos de la Bible, prevalece el dato con referencia de capítulo más precisa (`Source:`).

## Prioridad del canon (en caso de conflicto dentro del texto original)

1. Texto original (escena narrada).
2. Información explícita posterior del texto (bloques "ESTABLECIDO EN ESTE CAPÍTULO" son metadatos del documento, con menor jerarquía que la escena narrada).
3. Información explícita anterior.
4. Inferencias (siempre etiquetadas).

**Excepción documentada:** los capítulos 22H–36H (originalmente 8H/9H–15H) son la continuación canónica posterior a la bifurcación del Cap. 21 (vía Opción E). Los bloques finales de los capítulos 1–8 ("PRÓXIMO: …") anticipan contenido que a veces difiere levemente de los capítulos entregados → ver `contradictions.md`.

**Canon de autor — rutas posteriores (actualizado):** existen cuatro rutas individuales completas además de la Ruta Harem: **Ruta Saki** (Opción A, 22S–36S), **Ruta Ren** (Opción B, 22R–36R), **Ruta Mika** (Opción C, 22M–36M) y **Ruta Yuki** (Opción D, 22Y–36Y), cada una con 15 capítulos desarrollados al 100%, hijas canónicas y escenas explícitas. Son **finales alternativos y excluyentes** entre sí y con la Ruta Harem: todos son canon como ramas posibles del juego. Toda continuación debe declarar primero en qué rama se ubica y no mezclar eventos entre ramas.

## Etiquetas de certeza

- `CONFIRMED` — dicho o mostrado explícitamente en el texto.
- `NOT STATED` — el texto no aborda el punto; no se puede afirmar ni negar.
- `UNKNOWN` — se pregunta o implica en el texto pero nunca se responde.
- `INFERRED` — deducción directa de texto explícito (marcar la base).
- `THEORY / UNCONFIRMED` — hipótesis plausible sin confirmación; nunca tratar como canon.
- `USER-CANON (autor)` — dato aportado por el autor fuera del texto original (p. ej. en conversación posterior). Vincula a las continuaciones, pero **no debe citarse como `CONFIRMED` por el texto**. Si entra en conflicto con el texto, prevalece el texto (regla 1) y el conflicto se registra en `contradictions.md`.

## Reglas de continuidad establecidas por el propio texto

- Sistema de puntos por heroína (Yuki, Mika, Ren, Saki) sumado en cada `ELECCIÓN` (ver `routes.md`).
- La Opción E del Cap. 21 (Escena 21.5, Elección 10) solo se desbloquea si la diferencia entre el puntaje mayor y el menor de las cuatro heroínas es menor o igual a dos: $\max(P_{\text{Yuki}}, P_{\text{Mika}}, P_{\text{Ren}}, P_{\text{Saki}}) - \min(P_{\text{Yuki}}, P_{\text{Mika}}, P_{\text{Ren}}, P_{\text{Saki}}) \le 2$.
- Si se elige Ruta Individual (A–D): +5 a la heroína elegida, reset a 0 de las demás (Cap. 21, bloque final), cargando el cap. 22 respectivo (22S, 22R, 22M o 22Y).
- Si se elige Ruta Harem (E): Sistema de puntos reemplazado por mecánica de armonía grupal (Cap. 21, bloque final), cargando `capitulo-22H.md`.
- Única fecha calendario explícita del **XML original**: **15 de marzo** — nacimiento de las cuatro hijas (Cap. 15H.1 / 36H). En el **tronco común ampliado (caps. 1–21)** y la cronología autorizada por el autor se registran fechas calendario explícitas entre febrero y abril de 2026 (semanas 8 a 14, ver `timeline.md`).
- Convención de numeración: en el esquema XML los capítulos de Ruta Harem llevan sufijo `H` a partir del 9H (con subíndices `8.3H`, `8.5H`, `8.6H` en el Cap. 8); en la novela completa desarrollada corresponden a los capítulos **22H al 36H**.

## Prohibiciones

- No inventar capítulos, escenas ni nombres propios nuevos sin etiquetarlos como material nuevo (no canon).
- No resolver misterios `UNRESOLVED` por conveniencia narrativa.
- No convertir inferencias en canon silenciosamente.
- No corregir contradicciones del original sin registrarlas en `contradictions.md`.

## Regla de autor — contenido erótico por final (14/09/2026)

- **Todo final de ruta independiente debe incluir al menos DOS (2) escenas de sexo explícitas**, escritas sin elipsis (anatomía, actos y reacciones descritas directamente, sin fade-to-black): el fanservice explícito es el premio al jugador. `USER-CANON (autor)`.
- Estándar de escritura: el del Cap. 11H del original — "eroticismo explícito con buen gusto", "descripciones sensuales detalladas", adultos (18+), consentimiento explícito y mutuo, sin degradación.
- **La Ruta Harem queda como está:** su canon es el del texto original (caps. 9H–15H, con el estándar del Cap. 11H) y no se modifica ni amplía por esta regla. La regla aplica a las rutas/finales nuevos (Ruta Mika y futuras rutas A/B/D).
- Personas menores de 18 años: prohibición absoluta de contenido romántico/erótico (todas las heroínas son mayores de edad — Yuki 18, canon de autor; Mika 23, canon de autor).
