
Planteamiento del flujo Editorial Digital
Para lograr una automatización fluida y completa con DeepSeek Harness, la arquitectura debe estructurarse como un Pipeline de Dos Grandes Pasos (Fase de Auditoría y Corrección ➔ Fase de Compilación Digital). 
A continuación, se detalla la propuesta técnica para implementar este sistema, traducir las Skills en agentes/funciones de Harness y automatizar la generación de EPUB y PDF Maestro listo para el Flipbook.
Arquitectura General de la Automatización
1.:Word -.
Markdown + Ingesta" title="1. Fase 0: Ingesta y Registro"> El agente toma el archivo .docx original, obtiene el valor hash del archivo y crea el Pasaporte Editorial y lo convierte a un archivo Markdown base (PE_base.md), el cual servirá como la versión central sobre la que trabajarán las Skills.
2. Bucle de Auditoría (Skills SK-01 a SK-06):Fases 1 a 6 + Consolidador.
El agente ejecuta secuencialmente o en paralelo los auditores de ortotipografía, hoja de estilo, consistencia terminológica, claridad, estructura y paratextos. Genera el Registro Maestro de Hallazgos (Fase 7).
3. Aplicación de Cambios y Re-pasada: Control de cambios y estabilización.
Tras las correcciones/aprobaciones (Fase 8), el agente ejecuta la Re-pasada de control (Fase 9) para asegurar que no haya regresiones en ortotipografía ni consistencia.
4. Compilación de Artefactos Digitales (Fases 10 a 13):Pandoc / Weasyprint + Flipbook.
Con el Markdown limpio y estabilizado, el script invoca a Pandoc y WeasyPrint para compilar el EPUB 3.0 y el PDF Maestro. Opcionalmente, envía el PDF al convertidor o visor de Flipbook. Sería ideal que al generar cada producto final, se obtuviera de cada uno el valor hash del archivo.
Mapeo de Skills en DeepSeek Harness
Dentro del entorno de agentes, cada Skill del documento v2.1 se traduce en una función/prompt especializado: 
Fase Flujo_Editorial_Digital_Integrado_v2.1.docx
 | Skill Flujo_Editorial_Digital_Integrado_v2.1.docx
 | Función del Agente en Harness
 | Entrada
 | Entregable / Salida Flujo_Editorial_Digital_Integrado_v2.1.docx
 | 
Fase 0 
 | Ingesta 
 | Conversión .docx a .md
 | Archivo Word
 | Pasaporte_Editorial.json + manuscrito.md 
 | 
Fase 1 
 | SK-01 
 | Auditor Ortotipográfico
 | manuscrito.md
 | Informe_F1_Ortotipografia.md 
 | 
Fase 2 
 | SK-02 
 | Hoja de Estilo del Libro
 | manuscrito.md
 | Informe_F2_HojaEstilo.md 
 | 
Fase 3 
 | SK-03 
 | Consistencia Terminológica
 | manuscrito.md
 | Informe_F3_Consistencia.md 
 | 
Fase 4 
 | SK-04 
 | Claridad y Densidad
 | manuscrito.md
 | Informe_F4_Claridad.md 
 | 
Fase 5 
 | SK-05 
 | Diagnóstico Estructural
 | manuscrito.md
 | Informe_F5_Estructura.md 
 | 
Fase 6 
 | SK-06 
 | Paratextos e Índice
 | manuscrito.md
 | Informe_F6_Paratextos.md 
 | 
Fase 7 
 | Consolidador 
 | Fusionador de Hallazgos
 | Informes F1-F6 
 | Registro_Maestro_Hallazgos.json 
 | 
Fase 9 
 | Re-pasada 
 | Auditor de Regresiones
 | .md editado
 | Confirmación de estabilización 
 | 
Fase 10 
 | SK-08 
 | Maquetación Digital
 | .md Aprobado
 | libro.epub + pdf_maestro.pdf
 | 


Integración con el Visor de Flipbook (Fase 13 - Publicación)
Una vez compilado el PDF_Maestro.pdf, se puede agregar un paso final dentro del script de Python para enviar o sincronizar el archivo directamente con tu servidor web o visor de Flipbook (por ejemplo, copiándolo a una carpeta pública del servidor o invocando un compilador HTML5 para libros interactivos).  Este paso puede ser realizado por humanos
Con esta estructura se respeta al 100% el Principio Rector V2.0 ED: las Skills diagnostican y corrigen normas objetivas, mientras que la automatización de Pandoc/Weasyprint emite los artefactos finales inmediatamente tras la firma del humano. 
Puntos Clave del Manual Operativo (v2.1)
Aislamiento de Protocolos: Cada fase (de la F.1 a la F.6 y la F.10) tiene una instrucción de uso exclusiva que prohíbe explícitamente interferir con los objetivos de las demás fases. 
El Ciclo de Re-pasada: Recuerda la regla de oro tras aplicar correcciones (Fases 1 a 6): Re ejecutar obligatoriamente la Fase 1 (Ortotipografía), Fase 3 (Consistencia) y Fase 6 (Paratextos) para evitar regresiones antes de pasar a la maquetación. 
Secuencia Estricta: Ninguna herramienta de maquetación (SK-08 / Fase 10) o publicación se activa si el texto no ha pasado por las auditorías previas y la validación humana correspondiente. 
¿Cómo integrar esto en DeepSeek Harness?
El sistema puede operar bajo dos modalidades automatizadas:
Como System Prompts Modulares: Cada skill (SK-01, SK-02, etc.) se configura en DeepSeek harness local con su respectiva restricción de fase para que el agente se mantenga 100% enfocado en su tarea específica cuando sea invocado por el script de Python. 
Como Validación de Pasos: El script orquestador puede verificar que el informe de salida de una fase (por ejemplo, Informe_F1_Ortotipografia.md) exista y esté validado antes de permitir que el flujo avance a la siguiente skill. 

Flujo de Trabajo Automatizado desde Word/MarkDown a EPUB, PDF Maestro y Flipbook con DeepSeek Harness
1. Exportación EPUB y Flujo Desde Affinity Publisher
Planteamiento Principal:  Con el PDF Maestro, se deriva el EPUB a herramientas especializadas como Calibre, Sigil o Jutoh.Sobre las Skills de IA y GitHub: En GitHub existen herramientas como Pandoc, scripts con Calibre (ebook-convert) o librerías de Python (ebooklib) que permiten crear agentes automatizados para la conversión a EPUB a partir de texto estructurado (Markdown/HTML). Evaluemos las que ya contamos.
2. Diseño del Flujo de Trabajo Automatizado (Markdown como Fuente Única)
Concepto Clave: Separar el contenido (Markdown) de la presentación visual resuelve el mayor reto de la edición digital. Un archivo Markdown actúa como fuente única de verdad para generar múltiples salidas.Stack Tecnológico Necesario:1. Entorno de Redacción: Obsidian, Typora o VS Code (sintaxis semántica limpia).2. Motor de Conversión Dual: Pandoc (usando WeasyPrint para PDF mediante CSS) o Typst.3. Motor de Flipbook: Visor web interactivo HTML5/WebGL que toma el PDF Maestro generado.
3. Comandos Pandoc para Generación Simultánea de EPUB y PDF
Generación de EPUB 3.0:pandoc manuscrito.md -o libro.epub --metadata title="Título" --metadata author="Autor" --toc --epub-cover="portada.jpg"Generación de PDF Maestro (optimizado con Weasyprint):pandoc manuscrito.md -o pdf_maestro.pdf --pdf-engine=weasyprint -V geometry:margin=2.5cm -V fontsize=12pt --tocAutomatización con Script Bash:Un archivo ejecutable (.sh o .bat) encadena ambos comandos para procesar los dos artefactos en un solo paso.
4. Integración de la Automatización con DeepSeek Harness
Arquitectura con Agente Local:El marco de trabajo DeepSeek Harness permite orquestar scripts Python que ejecutan Pandoc/WeasyPrint mediante comandos de terminal desatendidos cuando el usuario da la instrucción en lenguaje natural.Ventajas del Agente:Permite mantener control de versiones, procesar cambios puntuales e integrar el envío de archivos compilados a carpetas de distribución o servidores locales de Flipbook de forma directa.
5. Pipeline Editorial Completo: Word -> Markdown -> Auditorías -> Compilación
Fases del Pipeline:1. Ingesta: Conversión de Word (.docx) a Markdown limpio mediante Pandoc/pypandoc.2. Auditoría y Pulido: El agente revisa ortotipografía, coherencia y estilo sobre el Markdown.3. Validación Humana: El usuario aprueba el Markdown depurado y estabilizado.4. Compilación Dual: Se ejecuta el script que escupe el EPUB 3.0 y el PDF Maestro para el Flipbook.
6. Integración del Flujo v2.1 (Skills SK-01 a SK-08)
Estructura de Skills y Fases:• Fase 0 (Ingesta): Conversión Word a MD + Pasaporte Editorial.• Fases 1 a 6 (Auditorías): SK-01 (Ortotipografía), SK-02 (Hoja de Estilo), SK-03 (Consistencia), SK-04 (Claridad), SK-05 (Estructura), SK-06 (Paratextos).• Fase 7 (Consolidación): Registro Maestro de Hallazgos.• Fase 8 & 9: Control de Cambios y Re-pasada de Estabilización.• Fase 10 (SK-08): Maquetación Digital (EPUB + PDF Maestro).• Fase 11-13: Control de Calidad y Publicación.Aislamiento de Protocolos: Cada Skill actúa bajo límites estrictos para no interferir con las responsabilidades de las otras fases, manteniendo la firma y supervisión en manos del editor humano.

















Compilación Completa: Flujo Editorial Digital v2.1 y Automatización
Manual Operativo, Tablas de Mapeo de Skills y Scripts de Automatización para DeepSeek Harness
1. Flujo de Trabajo y Decisiones de Arquitectura
La ruta editorial establecida es 100% digital (Word -> Markdown -> EPUB + PDF Maestro -> Flipbook). El uso de Markdown como fuente única de verdad permite separar estrictamente la estructura del contenido de su formato de presentación visual.
2. Tabla de Mapeo de Skills (v2.1)
Fase
 | Skill
 | Función en DeepSeek Harness
 | Entrada
 | Entregable / Salida
 | 
Fase 0
 | Ingesta
 | Conversión .docx a .md limpio
 | Archivo Word (.docx)
 | manuscrito_base.md + Pasaporte.json
 | 
Fase 1
 | SK-01
 | Auditor Ortotipográfico Ampliado
 | manuscrito_base.md
 | Informe_F1_Ortotipografia.md
 | 
Fase 2
 | SK-02
 | Hoja de Estilo del Libro
 | manuscrito_base.md
 | Informe_F2_HojaEstilo.md
 | 
Fase 3
 | SK-03
 | Consistencia Terminológica
 | manuscrito_base.md
 | Informe_F3_Consistencia.md
 | 
Fase 4
 | SK-04
 | Claridad y Densidad
 | manuscrito_base.md
 | Informe_F4_Claridad.md
 | 
Fase 5
 | SK-05
 | Diagnóstico Estructural
 | manuscrito_base.md
 | Informe_F5_Estructura.md
 | 
Fase 6
 | SK-06
 | Paratextos e Índice
 | manuscrito_base.md
 | Informe_F6_Paratextos.md
 | 
Fase 7
 | Consolidador
 | Fusionador de Hallazgos
 | Informes F1 - F6
 | Registro_Maestro_Hallazgos.json
 | 
Fase 8 & 9
 | Re-pasada
 | Auditor de Regresiones
 | MD Editado
 | manuscrito_estabilizado.md
 | 
Fase 10
 | SK-08
 | Maquetación Digital
 | MD Estabilizado
 | libro.epub + PDF Maestro (Flipbook)
 | 
3. Scripts de Automatización Completo BASH
Script en Bash (compilar.sh) para ejecución directa de Pandoc y WeasyPrint.
Función exacta: Automatiza y encadena comandos de la línea de comandos de manera secuencial sin tener que escribirlos uno por uno.
En el flujo editorial: Funciona como un "botón de encendido rápido" para la terminal. Toma las órdenes operativas básicas y llama a las herramientas instaladas en el equipo de golpe. Por ejemplo:
Le dice a Pandoc que lea el archivo Markdown estabilizado.
Le ordena aplicar la plantilla y generar el archivo .epub.
Llama de inmediato a WeasyPrint para compilar el mismo texto en paralelo y arrojar el PDF_Maestro.pdf listo para el Flipbook.
Script de Terminal Bash (compilar.sh):#!/bin/bash# Script de compilación rápida con Pandoc & WeasyPrintecho 'Compilando EPUB y PDF Maestro...'pandoc manuscrito_estabilizado.md -o dist/libro.epub --toc --metadata title='Mi Libro'pandoc manuscrito_estabilizado.md -o dist/pdf_maestro.pdf --pdf-engine=weasyprint -V geometry:margin=2.5cm --tocecho 'Proceso completado con éxito.'
 | 
Script de Python para DeepSeek Harness
Script de Automatización Orquestado (harness_editorial_pipeline.py)
Este script en Python centraliza la ejecución desatendida. Al activarse desde DeepSeek Harness, procesa las auditorías, aplica la consolidación y, tras la señal de aprobación (Fase 12), ejecuta la compilación a EPUB y PDF Maestro.

Script en Python (pipeline_editorial.py) con el flujo desatendido por clases y métodos listo para integrarse en el entorno local.
Su función exacta: Gestiona la inteligencia del proceso, la estructura de carpetas, la lectura de archivos de metadatos (.json), la verificación de estados y la orquestación compleja.
En el flujo editorial con DeepSeek Harness: Funciona como el cerebro coordinador del pipeline. Se encarga de:
Control de Fases: Verificar que el archivo de Word (.docx) se haya convertido correctamente a Markdown y que las auditorías de las Skills hayan emitido sus reportes antes de permitir avanzar.
Gestión de Entornos: Crear automáticamente las carpetas de trabajo (editorial_workspace/ y dist/) en la PC.
Puente con el Agente: Permitir que DeepSeek Harness invoque funciones específicas mediante comandos en lenguaje natural para estructurar metadatos, manejar variables de configuración y disparar los motores de conversión de forma limpia y controlada.
Script de Python para DeepSeek Harness (pipeline_editorial.py):import os, json, subprocess, pypandocclass PipelineEditorialDigital:    def __init__(self, docx_path, titulo, autor):        self.docx_path = docx_path        self.titulo = titulo        self.autor = autor        self.work_dir = 'editorial_workspace'        self.dist_dir = 'dist'        self.md_base = os.path.join(self.work_dir, 'manuscrito_base.md')        self.md_estabilizado = os.path.join(self.work_dir, 'manuscrito_estabilizado.md')        os.makedirs(self.work_dir, exist_ok=True)        os.makedirs(self.dist_dir, exist_ok=True)    def fase_0_ingesta(self):        pypandoc.convert_file(self.docx_path, 'markdown', outputfile=self.md_base)        pasaporte = {'titulo': self.titulo, 'autor': self.autor, 'fase_actual': 0}        with open(os.path.join(self.work_dir, 'pasaporte.json'), 'w', encoding='utf-8') as f:            json.dump(pasaporte, f, indent=4, ensure_ascii=False)    def fase_10_maquetacion(self):        epub_file = os.path.join(self.dist_dir, f'{self.titulo}.epub')        pypandoc.convert_file(self.md_estabilizado, 'epub3', outputfile=epub_file, extra_args=['--toc'])        pdf_file = os.path.join(self.dist_dir, f'{self.titulo}_PDF_Maestro.pdf')        subprocess.run(['pandoc', self.md_estabilizado, '-o', pdf_file, '--pdf-engine=weasyprint', '-V', 'geometry:margin=2.5cm', '--toc'], check=True)
 | 

