# Guía Maestra de Prompts para Generación Visual (Stable Diffusion)
## Corazones en Ebullición — Heroínas Principales

Este documento compila los prompts optimizados para **Stable Diffusion (SDXL, Pony Diffusion V6 XL, Animagine XL 3.1, Anything V5)** tanto para las cuatro heroínas de forma individual como para la **ilustración grupal con las cuatro juntas** (*Key Visual de Portada*).

---

## 1. Prompt Grupal: Las Cuatro Heroínas Juntas (4Girls Key Visual)

Debido a que generar cuatro personajes en una sola imagen puede causar mezcla de atributos (*color bleeding*), el prompt está estructurado por bloques ordenados de izquierda a derecha en composición panorámica (16:9 o 3:2).

### Configuración Recomendada
- **Resolución:** `1216x832` o `1344x768` (horizontal panorámico).
- **Modelos:** Animagine XL 3.1 / Pony Diffusion V6 XL / AutismMix SDXL.
- **Sampler:** DPM++ 2M Karras o Euler a.
- **Steps:** 30 - 38 pasos.
- **CFG Scale:** 6.5 - 7.5.

### Prompt Positivo Grupal (SDXL / Animagine XL)
```text
(masterpiece, best quality, ultra-detailed:1.2), visual novel official key visual, group picture, 4girls, looking at viewer, warm rustic wooden kitchen interior,
(yuki hayashi, 18yo, leftmost, petite slender girl, pale porcelain skin, striking deep sapphire blue eyes, deep midnight-blue black hair in a soft side braid draped over shoulder, see-through bangs, wearing crisp double-breasted white chef jacket:1.1),
(mika nakamura, 20yo, center-left, cheerful energetic girl, bright open radiant smile, light freckles on nose, warm hazel eyes, caramel-brown hair tied in high bouncy ponytail, wearing sexy crop gal top translucid with pink sports bra detailed with denim jeans:1.1),
(ren takahashi, 21yo, center-right, beautiful athletic girl, golden-tan skin, striking dark eyes, confident slight smirk, stylish dark espresso-brown wolf cut hair, wearing fitted black ribbed tank top and brown leather apron:1.1),
(saki yamamoto, 26yo, rightmost, graceful young woman, serene gentle smile, dark almond eyes, silky black hair in elegant low bun with kanzashi, shapely natural bust, wearing traditional indigo-blue shirt and casual skirt:1.1),
clean polished hinoki wood table with fresh baked sourdough bread and ceramic tea bowls in foreground, warm golden morning sunbeams streaming through shoji screens, dust motes in air, cinematic lighting, depth of field, 8k resolution, clean crisp lineart, makoto shinkai aesthetic
```

### Negative Prompt Grupal
```text
(worst quality, low quality:1.4), (deformed, distorted, disfigured:1.3), bad anatomy, bad hands, missing fingers, extra digits, fewer digits, fused bodies, blended characters, duplicated faces, clone face, extra limbs, masculine features, bodybuilder, huge breasts, exaggerated breasts, gigantomastia, western comic style, heavy makeup, modern neon city, cars, blurry, lowres, text, watermark, signature
```

---

### Configuración para Extensión Regional Prompter (A1111 / WebUI Forge)
Si utilizas la extensión **Regional Prompter** con división horizontal en 4 columnas (`1,1,1,1` en horizontal):

* **Prompt Común / Fondo:**
  ```text
  (masterpiece, best quality, ultra-detailed:1.2), visual novel official key visual, 4girls, traditional rustic wooden workshop, tatami and hinoki table, fresh bread and tea bowls, morning golden hour sunlight, 8k resolution BREAK
  ```
* **Columna 1 (Yuki - Izquierda):**
  ```text
  1girl, yuki hayashi, 18yo, petite, pale porcelain skin, vivid sapphire blue eyes, midnight-blue black hair in soft side braid draped over shoulder, see-through bangs, crisp white chef jacket, dark blue waist apron BREAK
  ```
* **Columna 2 (Mika - Centro-Izquierda):**
  ```text
  1girl, mika nakamura, 20yo, bright open smile, light freckles on nose, warm hazel eyes, caramel-brown hair in high bouncy ponytail, wearing sexy crop gal top translucid with pink sports bra underneath, blue denim jeans BREAK
  ```
* **Columna 3 (Ren - Centro-Derecha):**
  ```text
  1girl, ren takahashi, 21yo, confident smirk, golden-tan skin, dark eyes, dark espresso-brown wolf cut hair, fitted black ribbed tank top, brown leather work apron, dark olive cargo pants BREAK
  ```
* **Columna 4 (Saki - Derecha):**
  ```text
  1girl, saki yamamoto, 26yo, serene gentle smile, dark almond eyes, silky black hair in elegant low bun with kanzashi, shapely natural bust, traditional indigo-blue shirt and casual skirt
  ```

---

## 2. Resumen Comparativo de Rasgos Individuales

| Personaje | Edad | Cabello | Ojos y Piel | Busto / Silueta | Atuendo Canónico |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Yuki Hayashi** | 18 | Trenza lateral suave sobre hombro, negro azulado noche | Ojos azul zafiro intensos, piel porcelana blanca | Copa B / Menuda, esbelta y delicada | Chaqueta cruzada de chef blanca, delantal azul marino |
| **Mika Nakamura** | 20 | Coleta alta esponjosa, castaño caramelo luminoso | Ojos avellana/ámbar, pecas en nariz, piel miel | Copa C / Curvilínea, esbelta y vivaz | Crop top gal translúcido con sports bra rosa y jeans de mezclilla |
| **Ren Takahashi** | 21 | Wolf Cut desfilado en capas, castaño espresso oscuro | Ojos oscuros penetrantes, piel dorada bronceada | Copa C / Atlética, esbelta, curvas firmes | Top negro ajustado de tirantes, delantal cuero marrón, pantalón cargo |
| **Saki Yamamoto** | 26 | Moño bajo elegante con horquilla kanzashi, negro azabache | Ojos almendrados oscuros, piel marfil tersa | Copa C-D (el más pleno) / Reloj de arena elegante | Camisa tradicional azul añil de manga larga y falda casual |

---

## 3. Prompts de Sprites para Novela Visual en NovelAI V3 (Misma Pose Unificada)

Configurados con encuadre **Cowboy Shot**, orientación frontal idéntica (`standing, front view, facing viewer, looking at viewer, arms at sides`) y **fondo blanco liso** (`simple background, white background`) para facilitar el recorte transparente en Ren'Py.

### Yuki Hayashi (Sencillez natural y cotidiana, ojos con brillo expresivo)
```text
masterpiece, best quality, amazing quality, very aesthetic, absurdres, 1girl, solo, yuki hayashi, 18yo, standing, cowboy shot, front view, facing viewer, looking at viewer, eye level, relaxed posture, arms at sides, cute young woman, petite, soft facial features, gentle shy smile, closed mouth, light blush, clear deep blue eyes, catchlight, sparkling eyes, lively eyes, black hair, dark navy hair, soft side braid draped over shoulder, bangs, fair skin, modest bust, slender build, white chef jacket, rolled-up sleeves, dark blue waist apron, white pants, simple background, white background
```

### Mika Nakamura (Crop top gal translúcido, sports bra rosa y jeans)
```text
masterpiece, best quality, amazing quality, very aesthetic, absurdres, 1girl, solo, mika nakamura, 20yo, beautiful young woman, cheerful, energetic, radiant, pretty feminine face, delicate features, warm hazel eyes, amber eyes, long eyelashes, cute light freckles, freckles on nose, radiant open-mouth smile, bright smile, teeth, caramel-brown hair, light brown hair, high ponytail, bouncy ponytail, hair scrunchie, loose tendrils framing face, smooth honey-tan skin, light tan skin, slender feminine figure, hourglass curves, narrow waist, perky medium breasts, visible navel, toned bare midriff, translucent crop top, sheer crop top, bright pink sports bra, visible sports bra, distressed blue jeans, denim jeans, standing, cowboy shot, front view, facing viewer, looking at viewer, eye level, relaxed posture, arms at sides, simple background, white background
```

### Ren Takahashi (Más femenina, hermosa, camiseta sin mangas negra y pantalón verde oliva ceñido)
```text
masterpiece, best quality, amazing quality, very aesthetic, absurdres, 1girl, solo, ren takahashi, 21yo, beautiful young woman, feminine, charming, pretty feminine face, delicate jawline, soft features, striking dark almond eyes, long eyelashes, seductive slight smirk, charming smile, closed mouth, dark espresso-brown hair, dark brown hair, stylish feminine wolf cut, layered feathered hair, curtain bangs framing face, soft hair tips, smooth sun-kissed skin, light golden tan, slender feminine figure, hourglass figure, soft feminine curves, narrow waist, feminine hips, shapely perky breasts, slender shoulders, delicate collarbone, black sleeveless top, black ribbed tank top, fitted scoop neck tank top, tight dark olive pants, slim-fit pants, standing, cowboy shot, front view, facing viewer, looking at viewer, eye level, relaxed posture, arms at sides, simple background, white background
```

### Saki Yamamoto (Joven, refinada, noble, camisa tradicional azul añil de manga larga y falda casual)
```text
masterpiece, best quality, amazing quality, very aesthetic, absurdres, 1girl, solo, saki yamamoto, youthful young woman, refined, elegant, noble, pristine, graceful, standing, cowboy shot, front view, facing viewer, looking at viewer, eye level, relaxed posture, arms at sides, youthful beautiful face, delicate features, smooth porcelain skin, fresh, light blush, clear dark almond eyes, soft eyelashes, serene gentle smile, closed mouth, silky black hair, neat low bun, delicate ornate kanzashi, fine hair stick, soft face-framing strands, wispy bangs, exposed slender neck, slender graceful figure, narrow waist, feminine hips, large natural breasts, shapely breasts, delicate hands, traditional indigo-blue long sleeve blouse, neat collar, buttoned shirt, high-waist casual skirt, elegant casual skirt, refined clothes, simple background, white background
```

### Undesired Content para Ren Takahashi (Previene que se vea masculina o demasiado musculosa):
> **Nota para Ren:** Como viste camiseta sin mangas y corte wolf cut, la IA a veces puede tender a dibujarla con rasgos 'tomboy' toscos, hombros demasiado anchos o brazos de fisicoculturista. Este Negative Prompt garantiza que su rostro sea tierno/bonito y su cuerpo esbelto y femenino:
```text
masculine, manly, boyish, muscular, bodybuilder, brawny, bulky muscles, vascular veins, broad shoulders, flat chest, coarse skin, broad masculine jaw, heavy jawline, lowres, bad quality, worst quality, error, jpeg artifacts, watermark, signature, extra digits, fewer digits, missing fingers, bad hands, poorly drawn hands, poorly drawn face, mutation, deformed, blurry, bad anatomy, bad proportions, extra limbs, detailed background, scenery, dark background, complex background, shadow on background
```

### Undesired Content para Yuki Hayashi (Previene gorros de chef, exceso de fantasía o aspecto infantil/cerrado):
> **Nota para Yuki:** Al usar `chef jacket`, la IA a menudo intenta colocar un gorro de chef blanco alto (`toque blanche`), hacer close-ups o darle un acabado de muñeca irreal/fantasiosa. Este bloque asegura una apariencia natural, orgánica y cotidiana:
```text
close-up, portrait, headshot, face focus, cropped, fantasy, glowing eyes, glowing skin, surreal, overdressed, porcelain doll, chef hat, toque blanche, tall hat, cap, apron over shoulders, bib apron, child, loli, toddler, baby, mature, milf, heavy makeup, dark skin, lowres, bad quality, worst quality, error, jpeg artifacts, watermark, signature, extra digits, fewer digits, missing fingers, bad hands, poorly drawn hands, poorly drawn face, mutation, deformed, blurry, bad anatomy, bad proportions, extra limbs, detailed background, scenery, dark background, complex background, shadow on background
```

### Undesired Content para Saki Yamamoto (Previene envejecimiento / aspecto milf):
> **Nota para Saki:** NovelAI suele asociar los moños bajos (`low bun`) con mujeres maduras o madres. Por eso, este Negative Prompt suprime activamente cualquier rasgo de envejecimiento o exceso de maquillaje, asegurando que se vea en sus plenos veintitantos, fresca y refinada:
```text
mature, mature female, milf, middle-aged, aged, wrinkles, nasolabial folds, bags under eyes, tired eyes, heavy makeup, coarse skin, broad jaw, lowres, bad quality, worst quality, error, jpeg artifacts, watermark, signature, extra digits, fewer digits, missing fingers, bad hands, poorly drawn hands, poorly drawn face, mutation, deformed, blurry, bad anatomy, bad proportions, extra limbs, detailed background, scenery, dark background, complex background, shadow on background
```

