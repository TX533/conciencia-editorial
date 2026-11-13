DOCUMENTO:
ED-06

NOMBRE:
Kit de Implementación Editorial Digital

VERSION:
2.0 ED

ESTADO:
OFICIAL

TIPO:
PAQUETE DE IMPLEMENTACIÓN OPERATIVA

======================================================================
PROPÓSITO
======================================================================

El Kit de Implementación Editorial Digital define la
estructura física, documental y operativa necesaria
para implementar la Editorial Digital en proyectos reales.

Su objetivo es:

- Estandarizar proyectos.
- Evitar improvisación.
- Garantizar trazabilidad.
- Facilitar automatización.
- Reducir errores operativos.
- Asegurar compatibilidad entre obras.

======================================================================
ESTRUCTURA MAESTRA DE CARPETAS
======================================================================

Editorial_Digital/

├── 00_Gobernanza
│
├── 01_Catalogos
│
├── 02_Skills
│
├── 03_Proyectos
│
├── 04_Plantillas
│
├── 05_Entregables
│
├── 06_Archivados
│
└── 07_Herramientas

======================================================================
00_GOBERNANZA
======================================================================

Contiene:

ED-01_Pasaporte_Editorial

ED-02_Registro_Maestro_Hallazgos

ED-03_Manual_Estilo

ED-04_Matriz_Autoridad

ED-05_Especificacion_Tecnica

ED-06_Kit_Implementacion

======================================================================
01_CATALOGOS
======================================================================

CAT-01
Estados Proyecto

CAT-02
Estados Auditoria

CAT-03
Estados Hallazgo

CAT-04
Severidad

CAT-05
Confianza

CAT-06
Tipos Hallazgo

CAT-07
Validacion

CAT-08
Acciones IA

CAT-09
Clasificacion Editorial

CAT-10
Roles

CAT-11
Resolucion

CAT-12
Ubicacion

CAT-13
Autoridad

CAT-14
Subtipos

CAT-15
Fuentes Normativas

======================================================================
02_SKILLS
======================================================================

SK-01
Ortotipografía

SK-02
Hoja de Estilo

SK-03
Consistencia

SK-04
Claridad

SK-05
Estructura

SK-06
Paratextos

SK-07
Control Calidad

SK-08
Maquetación

SK-09
Control Post-Maquetación

SK-10
Entregables Editoriales

======================================================================
03_PROYECTOS
======================================================================

Cada obra utiliza una carpeta independiente.

Formato:

P-YYYY-NNNNN_Titulo

Ejemplo:

P-2026-00001_Camino_de_un_Medico

======================================================================
ESTRUCTURA DE PROYECTO
======================================================================

P-YYYY-NNNNN_Titulo/

├── 00_Ingesta
├── 01_Manuscrito
├── 02_Auditorias
├── 03_Correcciones
├── 04_Maquetacion
├── 05_Control_Calidad
├── 06_Entregables
├── 07_Publicacion
└── 08_Archivado

======================================================================
00_INGESTA
======================================================================

Contenido:

Manuscrito original.

Imágenes originales.

Material complementario.

Brief editorial.

Contrato.

Metadatos iniciales.

======================================================================
01_MANUSCRITO
======================================================================

Contiene:

Manuscrito maestro.

Versiones controladas.

Historial de cambios.

======================================================================
02_AUDITORIAS
======================================================================

SK-01

SK-02

SK-03

SK-04

SK-05

SK-06

SK-07

Cada Skill genera:

Informe

Hallazgos

Evidencias

======================================================================
03_CORRECCIONES
======================================================================

Contiene:

Cambios aprobados.

Correcciones aplicadas.

Registro de decisiones.

======================================================================
04_MAQUETACION
======================================================================

Contiene:

InDesign

PDF trabajo

EPUB trabajo

Recursos gráficos

Fuentes

======================================================================
05_CONTROL_CALIDAD
======================================================================

Contiene:

SK-09

Checklist

Validaciones

Certificaciones

======================================================================
06_ENTREGABLES
======================================================================

Contiene:

Pasaporte Editorial

Registro Maestro

Informe Editorial

Informe Maquetación

Informe Post-Maquetación

Acta Aprobación

Checklist Liberación

======================================================================
07_PUBLICACION
======================================================================

Contiene:

PDF final

EPUB final

MOBI

Portadas

Metadatos distribución

======================================================================
08_ARCHIVADO
======================================================================

Contiene:

Proyecto congelado.

Versiones históricas.

Bitácoras.

======================================================================
PLANTILLAS OFICIALES
======================================================================

TPL-01
Pasaporte Editorial

TPL-02
Registro Maestro Hallazgos

TPL-03
Informe Auditoría

TPL-04
Informe Editorial

TPL-05
Checklist Liberación

TPL-06
Acta Aprobación

TPL-07
Bitácora Versiones

TPL-08
Ficha Proyecto

======================================================================
CONVENCIÓN DE NOMBRES
======================================================================

Documentos:

ED-XX_Nombre

----------------------------------------------------------------------

Catálogos:

CAT-XX_Nombre

----------------------------------------------------------------------

Skills:

SK-XX_Nombre

----------------------------------------------------------------------

Plantillas:

TPL-XX_Nombre

----------------------------------------------------------------------

Proyectos:

P-YYYY-NNNNN_Nombre

======================================================================
CONVENCIÓN DE VERSIONES
======================================================================

Formato:

V-MAYOR.MENOR.REVISION

Ejemplos:

V-1.0.0

V-2.0.0

V-2.1.0

V-2.1.3

======================================================================
IDENTIFICADORES OFICIALES
======================================================================

Proyecto:

P-YYYY-NNNNN

----------------------------------------------------------------------

Hallazgo:

H-YYYY-NNNNNN

----------------------------------------------------------------------

Evento:

E-YYYY-NNNNNN

----------------------------------------------------------------------

Decisión:

D-YYYY-NNNNNN

----------------------------------------------------------------------

Riesgo:

R-YYYY-NNNNNN

======================================================================
SECUENCIA OPERATIVA OFICIAL
======================================================================

Ingesta

↓

SK-01

↓

SK-02

↓

SK-03

↓

SK-04

↓

SK-05

↓

SK-06

↓

SK-07

↓

Correcciones

↓

SK-08

↓

SK-09

↓

SK-10

↓

Revisión Humana

↓

Publicación

↓

Archivado

======================================================================
ARTEFACTOS MÍNIMOS OBLIGATORIOS
======================================================================

Toda obra debe poseer:

✓ Pasaporte Editorial

✓ Registro Maestro Hallazgos

✓ Historial Eventos

✓ Hoja de Estilo

✓ Informe Editorial

✓ Checklist Liberación

✓ Acta Aprobación

✓ PDF Final

======================================================================
CRITERIOS DE IMPLEMENTACIÓN
======================================================================

Toda acción:

Debe ser trazable.

----------------------------------------------------------------------

Toda corrección:

Debe tener responsable.

----------------------------------------------------------------------

Toda decisión:

Debe quedar documentada.

----------------------------------------------------------------------

Toda publicación:

Debe tener expediente completo.

======================================================================
MÉTRICAS DE MADUREZ
======================================================================

Nivel 1

Documentación básica.

----------------------------------------------------------------------

Nivel 2

Auditorías completas.

----------------------------------------------------------------------

Nivel 3

Trazabilidad completa.

----------------------------------------------------------------------

Nivel 4

Producción controlada.

----------------------------------------------------------------------

Nivel 5

Automatización integral.

======================================================================
REGLA FUNDAMENTAL
======================================================================

Si no está documentado,
editorialmente no existe.

======================================================================
DOCUMENTOS RELACIONADOS
======================================================================

ED-01
Pasaporte Editorial

ED-02
Registro Maestro de Hallazgos

ED-03
Manual de Estilo

ED-04
Matriz de Autoridad

ED-05
Especificación Técnica

======================================================================
HISTORIAL DE VERSIONES
======================================================================

v1.0

Kit inicial.

----------------------------------------------------------------------

v2.0 ED

Implementación completa de:

CAT-01 a CAT-15

SK-01 a SK-10

Pasaporte Editorial

Registro Maestro Hallazgos

Flujo Editorial Digital

Gobernanza Editorial

======================================================================
DICTAMEN
======================================================================

ESTADO:
OFICIAL

VIGENCIA:
ACTIVA

ALCANCE:
EDITORIAL DIGITAL

TIPO:
KIT OFICIAL DE IMPLEMENTACIÓN

AUTORIDAD:
OPERATIVA

DOCUMENTO:
ED-06 Kit de Implementación Editorial Digital v2.0 ED