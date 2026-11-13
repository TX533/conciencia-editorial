DOCUMENTO:
ED-02

NOMBRE:
Registro Maestro de Hallazgos

VERSION:
2.0 ED

ESTADO:
OFICIAL

TIPO:
REGISTRO CENTRAL DE TRAZABILIDAD

======================================================================
PROPÓSITO
======================================================================

El Registro Maestro de Hallazgos constituye la fuente única
de verdad para todos los hallazgos generados durante el
proceso editorial.

Su finalidad es:

- Registrar hallazgos.
- Registrar correcciones.
- Registrar validaciones.
- Registrar decisiones humanas.
- Mantener trazabilidad histórica.
- Alimentar el Pasaporte Editorial.

Todo hallazgo generado por cualquier Skill debe existir
en este registro.

======================================================================
IDENTIFICACIÓN DEL REGISTRO
======================================================================

Registro_ID:

Proyecto_ID:

Titulo_Obra:

Version_Registro:

Fecha_Creacion:

Fecha_Ultima_Actualizacion:

Responsable_Actualizacion:

Estado_Registro:

======================================================================
ESTRUCTURA DEL HALLAZGO
======================================================================

Hallazgo_ID

Skill_ID

Fecha_Deteccion

Proyecto_ID

Tipo_Hallazgo

Subtipo_Hallazgo

Severidad

Confianza

Tipo_Validacion

Accion_IA

Ubicacion

Estado

Responsable

Descripcion

Evidencia

Impacto

Recomendacion

Fecha_Ultima_Actualizacion

Observaciones

======================================================================
IDENTIFICADOR DE HALLAZGO
======================================================================

Formato:

H-YYYY-NNNNNN

Ejemplos:

H-2026-000001

H-2026-000002

H-2026-000003

======================================================================
TIPOS DE HALLAZGO
======================================================================

CAT-06

ORTOTIPOGRAFIA

HOJA_ESTILO

CONSISTENCIA

CLARIDAD

ESTRUCTURA

PARATEXTO

MAQUETACION

POST_MAQUETACION

CONTROL_CALIDAD

ENTREGABLE

LEGAL

DERECHOS_AUTOR

OTRO

======================================================================
ESTADOS DEL HALLAZGO
======================================================================

CAT-03

ABIERTO

EN_REVISION

ACEPTADO

RECHAZADO

CORREGIDO

VERIFICADO

CERRADO

======================================================================
TRANSICIONES PERMITIDAS
======================================================================

ABIERTO
↓
EN_REVISION

ABIERTO
↓
RECHAZADO

EN_REVISION
↓
ACEPTADO

EN_REVISION
↓
RECHAZADO

ACEPTADO
↓
CORREGIDO

CORREGIDO
↓
VERIFICADO

VERIFICADO
↓
CERRADO

======================================================================
TRANSICIONES PROHIBIDAS
======================================================================

ABIERTO
↓
CORREGIDO

ABIERTO
↓
VERIFICADO

ABIERTO
↓
CERRADO

RECHAZADO
↓
VERIFICADO

RECHAZADO
↓
CERRADO

======================================================================
SEVERIDADES
======================================================================

CAT-04

CRITICA

ALTA

MEDIA

BAJA

INFORMATIVA

======================================================================
TIPOS DE VALIDACIÓN
======================================================================

CAT-07

AUTOMATICA

HUMANA

AUTOR

EDITOR

LEGAL

======================================================================
ACCIONES IA
======================================================================

CAT-08

DETECTAR

DETECTAR_Y_CORREGIR

DETECTAR_Y_PROPONER

SOLO_INFORMAR

======================================================================
RESPONSABLES
======================================================================

AUTOR

EDITOR

REVISOR

MAQUETADOR

LEGAL

ADMINISTRADOR

IA

======================================================================
MATRIZ DE AUTORIDAD
======================================================================

IA

Puede:

- Crear hallazgos.
- Actualizar ABIERTO.
- Actualizar EN_REVISION.

No puede:

- Aceptar.
- Rechazar.
- Verificar.
- Cerrar.

----------------------------------------------------------------------

EDITOR

Puede:

- Revisar.
- Aceptar.
- Rechazar.
- Solicitar correcciones.
- Verificar.

----------------------------------------------------------------------

AUTOR

Puede:

- Aprobar.
- Rechazar observaciones.
- Solicitar excepciones.

----------------------------------------------------------------------

ADMINISTRADOR

Puede:

- Cerrar registros.
- Certificar expedientes.
- Archivar.

======================================================================
MÉTRICAS DEL REGISTRO
======================================================================

Total_Hallazgos

Hallazgos_Criticos

Hallazgos_Altos

Hallazgos_Medios

Hallazgos_Bajos

Hallazgos_Informativos

Abiertos

En_Revision

Aceptados

Rechazados

Corregidos

Verificados

Cerrados

======================================================================
RESUMEN POR SKILL
======================================================================

SK-01

Total_Hallazgos

Pendientes

Verificados

----------------------------------------------------------------------

SK-02

Total_Hallazgos

Pendientes

Verificados

----------------------------------------------------------------------

SK-03

Total_Hallazgos

Pendientes

Verificados

----------------------------------------------------------------------

SK-04

Total_Hallazgos

Pendientes

Verificados

----------------------------------------------------------------------

SK-05

Total_Hallazgos

Pendientes

Verificados

----------------------------------------------------------------------

SK-06

Total_Hallazgos

Pendientes

Verificados

----------------------------------------------------------------------

SK-07

Total_Hallazgos

Pendientes

Verificados

----------------------------------------------------------------------

SK-08

Total_Hallazgos

Pendientes

Verificados

----------------------------------------------------------------------

SK-09

Total_Hallazgos

Pendientes

Verificados

----------------------------------------------------------------------

SK-10

Total_Hallazgos

Pendientes

Verificados

======================================================================
RIESGOS EDITORIALES
======================================================================

Riesgo_ID

Fecha

Origen

Descripcion

Severidad

Estado

Responsable

Resolucion

======================================================================
BITÁCORA DE CAMBIOS
======================================================================

Cambio_ID

Fecha

Usuario

Accion

Hallazgo_ID

Descripcion

Resultado

======================================================================
REGLAS DE GOBERNANZA
======================================================================

Todo hallazgo debe tener:

- Hallazgo_ID.
- Skill_ID.
- Tipo_Hallazgo.
- Subtipo_Hallazgo.
- Estado.
- Responsable.
- Evidencia.

----------------------------------------------------------------------

No se permiten:

- Hallazgos sin evidencia.
- Hallazgos sin responsable.
- Hallazgos sin estado.
- Hallazgos sin Skill de origen.

----------------------------------------------------------------------

Toda modificación genera evento.

Toda decisión genera evento.

Toda corrección genera evento.

Toda verificación genera evento.

======================================================================
CRITERIOS DE CERTIFICACIÓN
======================================================================

REGISTRO COMPLETO

Condiciones:

- Sin campos obligatorios vacíos.
- Trazabilidad completa.
- Estados consistentes.

----------------------------------------------------------------------

REGISTRO CON OBSERVACIONES

Condiciones:

- Faltantes menores.
- Metadatos pendientes.

----------------------------------------------------------------------

REGISTRO INCOMPLETO

Condiciones:

- Hallazgos huérfanos.
- Evidencia faltante.
- Estados inconsistentes.

======================================================================
INTEGRACIÓN
======================================================================

Integrado con:

ED-01 Pasaporte Editorial

CAT-01 a CAT-15

SK-01 a SK-10

Historial de Eventos

Matriz de Validación

======================================================================
REGLA FUNDAMENTAL
======================================================================

Si un hallazgo no existe en el Registro Maestro
de Hallazgos, editorialmente no existe.

======================================================================
DICTAMEN DEL REGISTRO
======================================================================

ESTADO:

INCOMPLETO

EN_REVISION

VALIDADO

CERTIFICADO

ARCHIVADO

======================================================================
DOCUMENTO RECTOR
======================================================================

REGISTRO MAESTRO DE HALLAZGOS v2.0 ED

Editorial_Digital

Fuente oficial de trazabilidad editorial.