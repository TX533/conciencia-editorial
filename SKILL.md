---
name: conciencia-editorial
description: Sistema editorial completo para auditar y producir libros, manuales, tesis, revistas y documentos largos en español de México. Cubre el flujo de 14 fases: pasaporte editorial, ortotipografía y muletillas, hoja de estilo, consistencia terminológica, claridad y densidad, diagnóstico estructural, paratextos e índice, consolidación de hallazgos, corrección, re-pasada de control, maquetación digital, control post-maquetación, revisión humana y publicación. Usar cuando Martín pida auditar, revisar, corregir, maquetar o dar seguimiento editorial a un texto largo. Versión definitiva 2.1 ED.
---

# Editorial Digital — Sistema de Calidad Editorial (v2.1 ED)

Sistema normativo para revisar y producir obras en **español de México** con trazabilidad completa.
No es un corrector: es un **proceso por fases**, cada una con su protocolo, sus catálogos y su formato de salida.

## Regla de oro

**Una fase por pasada. Nunca mezclar protocolos.**

Si se pide ortotipografía, no se opina de estructura. Si se pide estructura, no se corrige puntuación.
Cada workflow incluye una *Instrucción de Uso* que delimita exactamente qué puede hacer la IA en esa fase.

## Autoridad y límites (CAT-13 y RG-01 a RG-12)

- La IA **crea hallazgos**, no publica obras ni cierra hallazgos.
- **Editor y Administrador** tienen la autoridad final.
- Todo hallazgo debe pertenecer a un catálogo (ver `references/catalogos-maestros.md`).
- Las skills **no pueden crear estados ni categorías nuevas**.
- Toda corrección automática debe justificarse con una **fuente normativa oficial** (RAE, AML, manual de estilo, hoja de estilo de la obra).
- Si hay **una sola** solución normativa → `DETECTAR_Y_CORREGIR`.
- Si hay **varias** soluciones válidas → `DETECTAR_Y_PROPONER`.

## Flujo por fases

| Fase | Nombre | Archivo |
|---|---|---|
| 0 | Ingesta y registro (pasaporte editorial) | `references/ED-01-pasaporte-editorial.md` |
| 1 | Ortotipografía, muletillas y redundancias | `workflows/01-ortotipografia-estilo-muletillas.md` |
| 2 | Hoja de estilo del libro | `workflows/02-hoja-de-estilo.md` |
| 3 | Consistencia terminológica y datos | `workflows/03-consistencia-terminologica.md` |
| 4 | Claridad y densidad | `workflows/04-claridad-y-densidad.md` |
| 5 | Diagnóstico estructural de alto nivel | `workflows/05-diagnostico-estructural.md` |
| 6 | Elementos paratextuales e índice | `workflows/06-paratexto-e-indice.md` |
| 7 | Consolidación de hallazgos | `references/ED-02-registro-hallazgos.md` |
| 8 | Corrección y validación | `workflows/07-control-de-calidad.md` |
| 9 | Re-pasada de control | reejecutar 01 + 03 + 06 |
| 10 | Maquetación editorial digital | `workflows/08-maquetacion-digital.md` |
| 11 | Control post-maquetación | `workflows/09-control-post-maquetacion.md` |
| 12 | Revisión humana final | checklist (ver `references/instrucciones-por-fase.md`) |
| 13 | Publicación y entregables | `workflows/10-generador-entregables.md` |

Detalle completo de activación por fase: `references/instrucciones-por-fase.md`
Mapa del flujo: `references/flujo-editorial-integrado.md`

## Cómo operar

1. **Identificar la fase** que pide Martín (o proponerla si no la dice).
2. **Leer el workflow** de esa fase y aplicar su protocolo completo.
3. **Respetar el formato de entrega** definido en ese workflow — no inventar otro.
4. **Registrar hallazgos** con los campos obligatorios: tipo, subtipo, severidad, ubicación, acción, fuente normativa, validación.
5. **No cerrar hallazgos**: eso lo hace el editor.

## Referencias normativas

- `references/catalogos-maestros.md` — CAT-01 a CAT-15 y reglas globales RG-01 a RG-12
- `references/ED-03-manual-estilo.md` — manual de estilo de la editorial
- `references/ED-04-matriz-autoridad.md` — quién decide qué
- `references/ED-05-especificacion-tecnica.md` — arquitectura del sistema
- `references/ED-06-kit-implementacion.md` — cómo desplegar el sistema
- `references/ED-07-plantilla-skill.md` — estructura obligatoria de toda skill nueva

## Reglas de contenido

- Español de **México** conforme a la **Academia Mexicana de la Lengua** (video, computadora, chofer).
- **Nunca** estandarizar la voz del autor: si una construcción es válida y conserva su estilo, no es error.
- En obras de varios autores, la **hoja de estilo de la obra** manda sobre el criterio general.
- Sin fuente normativa verificable, el hallazgo se marca como **dudoso**, no como error.

## Límites honestos

- El sistema exige manuscrito en texto plano. PDF o DOCX requieren extracción previa.
- Las fases 10 y 11 (maquetación) producen especificaciones y controles, no un PDF final maquetado.
- La revisión humana final (fase 12) no se puede automatizar: es una decisión editorial.


## Cotización

Para presupuestar un proyecto editorial, usar la skill aparte de cotización (editorial-cotizacion), que se distribuye por separado.
