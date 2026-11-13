# Conciencia Editorial — Sistema de Calidad Editorial (v2.1 ED)

Skill para agentes de IA que audita y produce libros, manuales, tesis, revistas y documentos largos en **español de México**, con trazabilidad completa y un flujo de 14 fases.

No es un corrector ortográfico. Es un **proceso editorial por fases**, cada una con su protocolo, catálogos cerrados y formato de entrega definido.

## Qué contiene

| Carpeta | Contenido |
|---|---|
| `SKILL.md` | Punto de entrada: enrutador de fases y reglas de autoridad |
| `references/` | Catálogos maestros (CAT-01 a CAT-15, RG-01 a RG-12) y documentos normativos ED-01 a ED-07 |
| `workflows/` | Los 10 protocolos operativos (SK-01 a SK-10), en su versión integrada 2.1 |

## Flujo editorial

```
0  Ingesta y pasaporte editorial
1  Ortotipografía, muletillas y redundancias
2  Hoja de estilo del libro
3  Consistencia terminológica y datos
4  Claridad y densidad
5  Diagnóstico estructural
6  Paratextos e índice
7  Consolidación de hallazgos
8  Corrección y validación
9  Re-pasada de control (regresiones)
10 Maquetación digital
11 Control post-maquetación
12 Revisión humana final
13 Publicación y entregables
```

## Principios que no se negocian

- **Una fase por pasada.** Nunca mezclar protocolos.
- **La IA crea hallazgos; no publica obras ni cierra hallazgos.** La autoridad final es del editor.
- **Corregir la norma, no reescribir al autor.**
- **Sin fuente normativa verificable, el hallazgo se marca como dudoso**, no como error.
- Todo hallazgo pertenece a un catálogo: no se inventan estados ni categorías.

## Instalación

### OpenClaw

```powershell
# Copiar la carpeta completa dentro del directorio de skills del workspace
Copy-Item -Recurse .\conciencia-editorial "$env:USERPROFILE\.openclaw\workspace\skills\conciencia-editorial"
```

O ejecutar `install.ps1` desde PowerShell.

### Otros agentes (Claude Code, Cursor, Codex, etc.)

El paquete es texto plano y agnóstico del proveedor:

1. Copia `SKILL.md` como instrucciones del proyecto o del agente.
2. Adjunta `references/` como contexto permanente si tu herramienta lo permite.
3. Cuando trabajes una fase, carga únicamente el archivo de `workflows/` correspondiente.

## Uso

Pide la fase explícitamente:

```
Aplica la fase 1 (ortotipografía) a este capítulo: [...]
Aplica la fase 2 (hoja de estilo) sobre este fragmento: [...]
Aplica la fase 5 (diagnóstico estructural) al índice y los tres primeros capítulos
```

El agente debe responder **solo** con el formato de entrega de esa fase. Si mezcla criterios de dos fases, la respuesta es incorrecta.

## Alcance y límites

- Requiere manuscrito en **texto plano**. Los PDF y DOCX necesitan extracción previa.
- Las fases 10 y 11 producen **especificaciones y controles** de maquetación, no un PDF final maquetado.
- La fase 12 (revisión humana final) no se puede automatizar: es una decisión editorial.
- El sistema está calibrado para **español de México** (AML). En otros dialectos hay que ajustar la hoja de estilo.

## Versión

**2.1 ED** — integra catálogos, severidades, tipos de validación, trazabilidad y regla de seguridad editorial de la V2.0 ED.

## Licencia

Sistema propietario de Conciencia Editorial. Todos los derechos reservados.
Consulta condiciones de uso antes de redistribuir o modificar.
