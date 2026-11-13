SKILL_ID:
SK-09

NOMBRE:
Control Post-Maquetación

VERSION:
2.0 ED

FASE EDITORIAL:
CONTROL_POST_MAQUETACION

ESTADO:
ACTIVA

======================================================================
OBJETIVO
======================================================================

Validar que la maquetación final no haya introducido errores,
inconsistencias o degradaciones respecto al manuscrito
aprobado y al Pasaporte Editorial.

Esta Skill constituye la última verificación automatizada
antes de la revisión humana final.

Su propósito es certificar que:

- El contenido sigue íntegro.
- La navegación funciona.
- La paginación es correcta.
- Los elementos visuales son consistentes.
- No existen errores derivados de la maquetación.

======================================================================
PRINCIPIO FUNDAMENTAL
======================================================================

Toda maquetación puede introducir errores.

Todo archivo maquetado debe ser auditado.

La producción nunca debe basarse únicamente
en la maquetación terminada.

======================================================================
ALCANCE
======================================================================

Puede aplicarse sobre:

- PDF digital.
- EPUB.
- MOBI.
- HTML exportado.
- Informes interactivos.
- Revistas digitales.
- Libros electrónicos.
- Documentos distribuidos electrónicamente.

======================================================================
FUENTES NORMATIVAS
======================================================================

Aplicar en orden jerárquico:

1. Pasaporte Editorial
2. Manuscrito aprobado
3. Hoja de Estilo de la Obra
4. Manual de Estilo Editorial Digital
5. Registro Maestro de Hallazgos

======================================================================
CATÁLOGOS UTILIZADOS
======================================================================

Tipo_Hallazgo

POST_MAQUETACION

----------------------------------------------------------------------
Subtipo_Hallazgo
----------------------------------------------------------------------

INDICE_ROTO

HIPERVINCULO_ROTO

REFERENCIA_CRUZADA_ROTA

PAGINACION_INCORRECTA

FIGURA_DESVINCULADA

TABLA_DESVINCULADA

PIE_DE_FOTO_INCORRECTO

CORNISA_INCORRECTA

NUMERACION_INCORRECTA

VIUDA_DETECTADA

HUERFANA_DETECTADA

CORTE_INCORRECTO

DESBORDAMIENTO_TEXTO

IMAGEN_DEFORMADA

IMAGEN_BAJA_RESOLUCION

TABLA_CORTADA

FORMATO_INCONSISTENTE

ESTILO_NO_APLICADO

FALTA_CONTENIDO

CONTENIDO_DUPLICADO

METADATO_INCORRECTO

EXPORTACION_DEFECTUOSA

NAVEGACION_DEFECTUOSA

======================================================================
SEVERIDADES PERMITIDAS
======================================================================

CRITICA

ALTA

MEDIA

BAJA

INFORMATIVA

======================================================================
NIVEL DE CONFIANZA
======================================================================

ALTA

MEDIA

BAJA

======================================================================
TIPO DE VALIDACION
======================================================================

AUTOMATICA

Aplicable a:

- Índices.
- Hipervínculos.
- Paginación.
- Metadatos.
- Correspondencias.
- Integridad de exportación.
- Estilos.
- Navegación.
- Referencias cruzadas.

----------------------------------------------------------------------

EDITOR

Aplicable a:

- Evaluación visual.
- Calidad estética.
- Legibilidad subjetiva.
- Casos ambiguos.

======================================================================
ACCIONES PERMITIDAS
======================================================================

DETECTAR

Permitido para:

- Errores post-maquetación.
- Pérdida de contenido.
- Errores visuales.
- Errores de exportación.

----------------------------------------------------------------------

DETECTAR_Y_PROPONER

Permitido para:

- Mejoras de navegación.
- Ajustes visuales menores.
- Riesgos potenciales.

----------------------------------------------------------------------

DETECTAR_Y_CORREGIR

Permitido únicamente cuando exista una
corrección inequívoca.

Ejemplos:

- Hipervínculo roto.
- Numeración incorrecta.
- Referencia cruzada incorrecta.
- Metadato incorrecto.
- Marcador roto.

======================================================================
PROTOCOLO DE DETECCIÓN
======================================================================

INTEGRIDAD DEL CONTENIDO

Verificar:

- No exista pérdida de texto.
- No exista duplicación.
- No falten capítulos.
- No falten secciones.

----------------------------------------------------------------------

ÍNDICE Y NAVEGACIÓN

Verificar:

- Índice funcional.
- Marcadores.
- Navegación interna.
- Vínculos entre capítulos.

----------------------------------------------------------------------

HIPERVÍNCULOS

Verificar:

- Destinos existentes.
- URLs válidas.
- Referencias activas.

----------------------------------------------------------------------

PAGINACIÓN

Verificar:

- Secuencia correcta.
- Numeración continua.
- Correspondencia con índice.

----------------------------------------------------------------------

IMÁGENES

Verificar:

- Resolución.
- Integridad.
- Posición.
- Relación con pie de foto.
- Escalado correcto.

----------------------------------------------------------------------

TABLAS

Verificar:

- Integridad.
- Cortes.
- Encabezados.
- Relación con el texto.

----------------------------------------------------------------------

TIPOGRAFÍA Y ESTILOS

Verificar:

- Aplicación de estilos.
- Consistencia tipográfica.
- Jerarquía visual.
- Cornisas.
- Foliación.

----------------------------------------------------------------------

EXPORTACIÓN

Verificar:

- PDF funcional.
- EPUB funcional.
- Integridad de fuentes.
- Incrustación correcta.
- Compatibilidad básica.

======================================================================
CRITERIOS DE APROBACIÓN
======================================================================

APTO

Condiciones:

- Sin errores CRÍTICOS.
- Sin errores ALTOS.
- Navegación funcional.
- Integridad total.

----------------------------------------------------------------------

APTO_CON_OBSERVACIONES

Condiciones:

- Sólo errores MEDIOS o menores.
- Sin impacto sobre lectura.
- Sin pérdida de contenido.

----------------------------------------------------------------------

NO_APTO

Condiciones:

- Error CRÍTICO.
- Error ALTO.
- Contenido faltante.
- Navegación rota.
- Exportación defectuosa.

======================================================================
ACCIONES PROHIBIDAS
======================================================================

La Skill NO debe:

- Reescribir contenido.
- Corregir estilo literario.
- Modificar capítulos.
- Alterar estructura.
- Agregar contenido.
- Eliminar contenido.
- Aprobar publicación.
- Sustituir la revisión humana.
- Cerrar hallazgos editoriales.

======================================================================
RESPONSABLE PREDETERMINADO
======================================================================

MAQUETADOR

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

1. DIAGNÓSTICO POST-MAQUETACIÓN

Resumen ejecutivo.

----------------------------------------------------------------------

2. INTEGRIDAD DEL CONTENIDO

Resultados de validación.

----------------------------------------------------------------------

3. NAVEGACIÓN E ÍNDICES

Resultados de validación.

----------------------------------------------------------------------

4. IMÁGENES Y TABLAS

Resultados de validación.

----------------------------------------------------------------------

5. TIPOGRAFÍA Y ESTILOS

Resultados de validación.

----------------------------------------------------------------------

6. HALLAZGOS DETECTADOS

Listado completo.

----------------------------------------------------------------------

7. RESULTADO DE CERTIFICACIÓN

APTO

APTO_CON_OBSERVACIONES

NO_APTO

----------------------------------------------------------------------

8. RESUMEN ESTADÍSTICO

Total de hallazgos.

Hallazgos críticos.

Hallazgos altos.

Hallazgos medios.

Hallazgos bajos.

Porcentaje estimado de conformidad.

======================================================================
INTEGRACIÓN CON PASAPORTE EDITORIAL
======================================================================

Actualiza exclusivamente:

F.8 Control Post-Maquetación

Registro Maestro de Hallazgos

Historial de Eventos

======================================================================
REGLA DE SEGURIDAD EDITORIAL
======================================================================

La Skill puede verificar.

La Skill puede certificar.

La Skill puede bloquear el avance.

La Skill NO puede autorizar la publicación.

Toda publicación requiere:

VALIDACION_HUMANA_FINAL

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