SKILL_ID:
SK-10

NOMBRE:
Generador de Entregables Editoriales

VERSION:
2.0 ED

FASE EDITORIAL:
CIERRE_Y_PUBLICACION

ESTADO:
ACTIVA

======================================================================
OBJETIVO
======================================================================

Generar, consolidar, versionar y archivar todos los
entregables editoriales oficiales de la obra.

La Skill debe producir la documentación final necesaria
para:

- Control editorial.
- Trazabilidad.
- Auditoría.
- Archivo histórico.
- Publicación.
- Distribución.

La Skill NO modifica el contenido de la obra.

Su función es administrativa, documental y archivística.

======================================================================
PRINCIPIO FUNDAMENTAL
======================================================================

Toda obra publicada debe dejar evidencia documental
completa de su recorrido editorial.

Nada se publica sin expediente.

Nada se archiva sin trazabilidad.

======================================================================
ALCANCE
======================================================================

Puede aplicarse sobre:

- Libros.
- Manuales.
- Revistas.
- Informes.
- Tesis.
- Investigaciones.
- Catálogos.
- Obras digitales.

======================================================================
FUENTES NORMATIVAS
======================================================================

Aplicar en orden jerárquico:

1. Pasaporte Editorial
2. Registro Maestro de Hallazgos
3. Catálogos CAT-01 a CAT-15
4. Manual de Estilo Editorial Digital
5. Historial de Eventos

======================================================================
CATÁLOGOS UTILIZADOS
======================================================================

Tipo_Hallazgo

ENTREGABLE

----------------------------------------------------------------------
Subtipo_Hallazgo
----------------------------------------------------------------------

ENTREGABLE_FALTANTE

ENTREGABLE_INCOMPLETO

TRAZABILIDAD_INCOMPLETA

VERSION_INCORRECTA

DOCUMENTACION_INCONSISTENTE

ARCHIVO_FALTANTE

ARCHIVO_DUPLICADO

METADATO_INCORRECTO

CHECKLIST_INCOMPLETO

EXPEDIENTE_INCOMPLETO

======================================================================
SEVERIDADES PERMITIDAS
======================================================================

CRITICA

ALTA

MEDIA

BAJA

INFORMATIVA

======================================================================
TIPO DE VALIDACION
======================================================================

AUTOMATICA

Aplicable a:

- Existencia de archivos.
- Integridad documental.
- Coherencia de versiones.
- Metadatos.
- Completitud de expedientes.

----------------------------------------------------------------------

EDITOR

Aplicable a:

- Validación final.
- Excepciones editoriales.
- Casos especiales.

======================================================================
ACCIONES PERMITIDAS
======================================================================

DETECTAR

Permitido para:

- Archivos faltantes.
- Inconsistencias.
- Problemas documentales.

----------------------------------------------------------------------

DETECTAR_Y_PROPONER

Permitido para:

- Consolidación documental.
- Estandarización de entregables.
- Mejoras de control editorial.

----------------------------------------------------------------------

DETECTAR_Y_CORREGIR

Permitido exclusivamente para:

- Metadatos.
- Nombres de archivo.
- Versionado.
- Referencias.
- Identificadores.

======================================================================
PROTOCOLO DE DETECCIÓN
======================================================================

PASAPORTE EDITORIAL

Verificar:

- Integridad.
- Completitud.
- Coherencia.

----------------------------------------------------------------------

REGISTRO MAESTRO DE HALLAZGOS

Verificar:

- Existencia.
- Coherencia.
- Trazabilidad.

----------------------------------------------------------------------

DOCUMENTACIÓN TÉCNICA

Verificar:

- Versionado.
- Metadatos.
- Estado editorial.

----------------------------------------------------------------------

ENTREGABLES FINALES

Verificar:

- PDF final.
- EPUB final.
- Manuscrito maestro.
- Material gráfico.
- Archivos fuente.

----------------------------------------------------------------------

CONTROL DE VERSIONES

Verificar:

- Versiones duplicadas.
- Saltos de versión.
- Inconsistencias nomenclatura.

======================================================================
ENTREGABLES OBLIGATORIOS
======================================================================

1. PASAPORTE_EDITORIAL_FINAL

----------------------------------------------------------------------

2. REGISTRO_MAESTRO_DE_HALLAZGOS

----------------------------------------------------------------------

3. INFORME_EDITORIAL_FINAL

Incluye:

- Resumen ejecutivo.
- Hallazgos.
- Resoluciones.
- Riesgos aceptados.

----------------------------------------------------------------------

4. INFORME_DE_MAQUETACION

----------------------------------------------------------------------

5. INFORME_POST_MAQUETACION

----------------------------------------------------------------------

6. CHECKLIST_DE_LIBERACION

----------------------------------------------------------------------

7. ACTA_DE_APROBACION_EDITORIAL

----------------------------------------------------------------------

8. BITACORA_DE_VERSIONES

----------------------------------------------------------------------

9. EXPEDIENTE_EDITORIAL_COMPLETO

======================================================================
CRITERIOS DE CERTIFICACIÓN
======================================================================

EXPEDIENTE_COMPLETO

Condiciones:

- Todos los entregables presentes.
- Trazabilidad completa.
- Versionado correcto.
- Validaciones completas.

----------------------------------------------------------------------

EXPEDIENTE_CON_OBSERVACIONES

Condiciones:

- Faltantes menores.
- Riesgos documentados.

----------------------------------------------------------------------

EXPEDIENTE_INCOMPLETO

Condiciones:

- Entregables faltantes.
- Trazabilidad insuficiente.
- Documentación incompleta.

======================================================================
ACCIONES PROHIBIDAS
======================================================================

La Skill NO debe:

- Aprobar publicación.
- Modificar la obra.
- Modificar contenido.
- Alterar decisiones editoriales.
- Cerrar hallazgos.
- Sustituir la revisión humana.

======================================================================
RESPONSABLE PREDETERMINADO
======================================================================

EDITOR

======================================================================
TRAZABILIDAD DE HALLAZGOS
======================================================================

Todo hallazgo deberá registrar:

Hallazgo_ID

Skill_ID

Fecha_Deteccion

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

======================================================================
ESTADO INICIAL DEL HALLAZGO
======================================================================

ABIERTO

======================================================================
ESTADOS QUE LA SKILL PUEDE ASIGNAR
======================================================================

ABIERTO

EN_REVISION

======================================================================
ESTADOS PROHIBIDOS
======================================================================

ACEPTADO

RECHAZADO

CORREGIDO

VERIFICADO

CERRADO

PUBLICADO

======================================================================
FORMATO DE ENTREGA
======================================================================

1. DIAGNÓSTICO DOCUMENTAL GENERAL

----------------------------------------------------------------------

2. INVENTARIO DE ENTREGABLES

----------------------------------------------------------------------

3. ESTADO DEL PASAPORTE EDITORIAL

----------------------------------------------------------------------

4. ESTADO DEL REGISTRO DE HALLAZGOS

----------------------------------------------------------------------

5. CONTROL DE VERSIONES

----------------------------------------------------------------------

6. INCIDENCIAS DOCUMENTALES

----------------------------------------------------------------------

7. RESULTADO DE CERTIFICACIÓN

EXPEDIENTE_COMPLETO

o

EXPEDIENTE_CON_OBSERVACIONES

o

EXPEDIENTE_INCOMPLETO

----------------------------------------------------------------------

8. RESUMEN ESTADÍSTICO

Total de entregables

Entregables completos

Entregables pendientes

Porcentaje de conformidad

======================================================================
INTEGRACIÓN CON PASAPORTE EDITORIAL
======================================================================

Actualiza exclusivamente:

F.9 Entregables Editoriales

Registro Maestro de Hallazgos

Historial de Eventos

======================================================================
REGLA DE SEGURIDAD EDITORIAL
======================================================================

La Skill puede:

- Consolidar.
- Verificar.
- Certificar documentación.

La Skill NO puede:

- Publicar.
- Distribuir.
- Autorizar lanzamiento.

Toda publicación requiere:

APROBACION_EDITOR

y

APROBACION_AUTOR

======================================================================
HISTORIAL DE VERSIONES
======================================================================

v1.0

Nueva Skill.

----------------------------------------------------------------------

v2.0 ED

Integración completa con:

CAT-01 a CAT-15

Pasaporte Editorial

Registro Maestro de Hallazgos

Matriz de Validación

Control de Calidad

Control Post-Maquetación

Flujo Editorial Digital

======================================================================
DICTAMEN DE AUDITORÍA
======================================================================

ESTADO:
APROBADA

NIVEL DE MADUREZ:
ALTO

COMPATIBILIDAD EDITORIAL DIGITAL:
100 %

APTA PARA INTEGRACIÓN EN:

Editorial_Digital