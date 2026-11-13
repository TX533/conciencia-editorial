DOCUMENTO:
ED-05

NOMBRE:
Especificación Técnica del Sistema Editorial Digital

VERSION:
2.0 ED

ESTADO:
OFICIAL

TIPO:
ARQUITECTURA TÉCNICA DEL SISTEMA

======================================================================
PROPÓSITO
======================================================================

Definir la arquitectura técnica, lógica y operativa
de la Editorial Digital.

Este documento establece:

- Componentes del sistema.
- Modelo de datos.
- Relaciones entre documentos.
- Ciclo de vida editorial.
- Reglas de integración.
- Automatizaciones.
- Control de versiones.
- Trazabilidad.

ED-05 constituye la especificación técnica oficial
para implementar la Editorial Digital.

======================================================================
ARQUITECTURA GENERAL
======================================================================

La Editorial Digital está compuesta por:

Núcleo Normativo

Núcleo de Auditoría

Núcleo de Producción

Núcleo de Gobernanza

Núcleo de Trazabilidad

Núcleo de Entregables

======================================================================
CAPA 1
NÚCLEO NORMATIVO
======================================================================

Documentos:

ED-03
Manual de Estilo Editorial Digital

CAT-01 a CAT-15

Responsabilidad:

Definir reglas.

No almacena hallazgos.

No almacena versiones.

======================================================================
CAPA 2
NÚCLEO DE AUDITORÍA
======================================================================

Skills:

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

Función:

Detectar.

Corregir cuando exista norma objetiva.

Proponer cuando exista criterio editorial.

======================================================================
CAPA 3
CONTROL DE CALIDAD
======================================================================

Skills:

SK-07
Control de Calidad Editorial Integrado

SK-09
Control Post-Maquetación

Función:

Certificar.

Validar.

Bloquear avance cuando existan riesgos.

======================================================================
CAPA 4
PRODUCCIÓN
======================================================================

Skill:

SK-08

Maquetación Editorial Digital

Función:

Transformar manuscrito aprobado
en producto editorial.

======================================================================
CAPA 5
CIERRE DOCUMENTAL
======================================================================

Skill:

SK-10

Generador de Entregables Editoriales

Función:

Consolidar expediente.

Generar documentación oficial.

Preparar liberación editorial.

======================================================================
CAPA 6
GOBERNANZA
======================================================================

Documentos:

ED-01
Pasaporte Editorial

ED-02
Registro Maestro de Hallazgos

ED-04
Matriz de Autoridad Editorial

Función:

Controlar.

Registrar.

Certificar.

Autorizar.

======================================================================
MODELO DE DATOS MAESTRO
======================================================================

Entidad principal:

PROYECTO_EDITORIAL

Campos mínimos:

Proyecto_ID

Titulo

Autor

Editor

Estado

Version

Fecha_Creacion

Fecha_Actualizacion

======================================================================
RELACIONES DEL SISTEMA
======================================================================

Proyecto
│
├── Pasaporte Editorial
│
├── Registro Maestro de Hallazgos
│
├── Historial de Eventos
│
├── Hoja de Estilo
│
├── Entregables
│
└── Versiones

======================================================================
MODELO DE HALLAZGO
======================================================================

Hallazgo_ID

Proyecto_ID

Skill_ID

Tipo_Hallazgo

Subtipo_Hallazgo

Severidad

Estado

Responsable

Descripcion

Evidencia

Recomendacion

Fecha_Deteccion

Fecha_Cierre

======================================================================
MODELO DE EVENTO
======================================================================

Evento_ID

Fecha

Hora

Proyecto_ID

Actor

Accion

Objeto

Resultado

Observaciones

======================================================================
MODELO DE VERSIÓN
======================================================================

Version_ID

Proyecto_ID

Version

Fecha

Autor_Cambio

Motivo

Descripcion

Estado

======================================================================
CICLO DE VIDA DEL PROYECTO
======================================================================

RECIBIDO

↓

INGESTA

↓

AUDITORIA

↓

CORRECCION

↓

VALIDACION

↓

MAQUETACION

↓

CONTROL_POST_MAQUETACION

↓

PRODUCCION

↓

DISTRIBUCION

↓

PUBLICADO

↓

ARCHIVADO

======================================================================
FLUJO DE EJECUCIÓN
======================================================================

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

SK-08

↓

SK-09

↓

SK-10

↓

REVISION HUMANA

↓

PUBLICACION

======================================================================
REGLAS DE AUTOMATIZACIÓN
======================================================================

La IA puede ejecutar automáticamente:

- Auditorías.
- Validaciones objetivas.
- Correcciones normativas.
- Registro de eventos.
- Generación de entregables.
- Actualización documental.

----------------------------------------------------------------------

La IA no puede ejecutar automáticamente:

- Publicación.
- Cierre definitivo.
- Decisiones editoriales.
- Aprobaciones finales.

======================================================================
INTEROPERABILIDAD
======================================================================

Todas las Skills deberán consumir:

CAT-01 a CAT-15

----------------------------------------------------------------------

Todas las Skills deberán actualizar:

Pasaporte Editorial

----------------------------------------------------------------------

Toda Skill que genere hallazgos deberá registrar:

Registro Maestro de Hallazgos

----------------------------------------------------------------------

Toda acción deberá generar:

Historial de Eventos

======================================================================
REGLAS DE TRAZABILIDAD
======================================================================

No existe acción sin evento.

No existe hallazgo sin evidencia.

No existe corrección sin responsable.

No existe publicación sin expediente.

======================================================================
CONTROL DE VERSIONES
======================================================================

Cada documento deberá poseer:

Version

Fecha

Responsable

Descripcion_Cambio

----------------------------------------------------------------------

Toda modificación genera:

Nueva entrada de versión

Nuevo evento

Actualización del Pasaporte

======================================================================
ESTÁNDARES DE IDENTIFICACIÓN
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

Versión:

V-MAYOR.MENOR.REVISION

Ejemplos:

V-1.0.0

V-2.0.0

V-2.1.3

======================================================================
REQUISITOS PARA PUBLICACIÓN
======================================================================

SK-07 = APTO

SK-09 = APTO

SK-10 = EXPEDIENTE_COMPLETO

Pasaporte = CERTIFICADO

Hallazgos críticos = 0

Hallazgos altos abiertos = 0

Aprobación de autor

Aprobación de editor

Liberación de administrador

======================================================================
REQUISITOS DE ARCHIVO
======================================================================

Pasaporte Editorial Final

Registro Maestro Final

Informe Editorial

PDF Final

EPUB Final

Checklist de Liberación

Acta de Aprobación

Bitácora de Versiones

======================================================================
SEGURIDAD DEL SISTEMA
======================================================================

Toda acción debe ser:

Trazable

Auditable

Reproducible

Verificable

----------------------------------------------------------------------

Ningún dato histórico podrá eliminarse.

Los registros cerrados sólo pueden:

Archivarse

Nunca destruirse

======================================================================
DOCUMENTOS RECTORES
======================================================================

ED-01
Pasaporte Editorial

ED-02
Registro Maestro de Hallazgos

ED-03
Manual de Estilo Editorial Digital

ED-04
Matriz de Autoridad Editorial

----------------------------------------------------------------------

CAT-01 a CAT-15

----------------------------------------------------------------------

SK-01 a SK-10

======================================================================
HISTORIAL DE VERSIONES
======================================================================

v1.0

Creación inicial.

----------------------------------------------------------------------

v2.0 ED

Arquitectura completa.

Integración total con:

ED-01 a ED-04

CAT-01 a CAT-15

SK-01 a SK-10

Flujo Editorial Digital

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
ESPECIFICACIÓN TÉCNICA MAESTRA

AUTORIDAD:
ARQUITECTURA OFICIAL DEL SISTEMA

DOCUMENTO:
ED-05 Especificación Técnica del Sistema Editorial Digital v2.0 ED