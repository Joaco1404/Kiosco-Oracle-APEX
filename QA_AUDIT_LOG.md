# 🐞 Registro de Auditoría QA y Bugs Documentados

Este documento registra los hallazgos y limitaciones encontradas durante las pruebas de calidad estática (APEX Advisor) y de caja negra en el sistema Kiosco.

> **Nota:** Los siguientes reportes corresponden a limitaciones internas de la herramienta de análisis estático de Oracle APEX (Advisor) al intentar parsear código JavaScript/PLSQL avanzado, **no así a fallos en la lógica de la aplicación**, la cual fue validada exitosamente mediante pruebas manuales.

---

### BUG-002: APEX Advisor - HTTP 500 en Página 7
*   **Módulo:** APEX Advisor
*   **Descripción:** El analizador estático lanza un HTTP 500 (Internal Server Error) al intentar analizar la Página 7 (Nueva Venta). Funciona correctamente en otras páginas.
*   **Causa probable:** Código JavaScript o PL/SQL complejo en la Página 7 que el Advisor no puede parsear.
*   **Workaround:** Se omitió el uso del Advisor para esta página y se procedió a realizar pruebas manuales y funcionales (Test Plans).

### BUG-003: APEX Advisor - Falla en parseo de Colecciones APEX
*   **Módulo:** APEX Advisor
*   **Descripción:** El Advisor lanza un HTTP 500 al intentar analizar la Página 7.
*   **Pruebas de Aislamiento:** Se desactivaron ("Comment Out") las Acciones Dinámicas (AJAX/PLSQL) y el Proceso principal de la página. El error HTTP 500 persistió.
*   **Conclusión:** El Advisor tiene una falla interna al intentar parsear la región del Interactive Report que se alimenta de una Función PL/SQL retornando SQL dinámico sobre **APEX Collections**. La herramienta de análisis estático no puede validar colecciones en memoria.
*   **Workaround:** Se realizaron Pruebas Manuales exhaustivas y se dejó documentado para futuras pruebas automatizadas (Cypress).

### BUG-004: APEX Advisor - HTTP 500 en Página 4
*   **Módulo:** APEX Advisor
*   **Descripción:** Error HTTP 500 al analizar la Página 4 (Productos).
*   **Causa probable:** El analizador estático falla al intentar parsear las funciones personalizadas de JavaScript (`JSON.stringify`) y los procesos PL/SQL con `JSON_TABLE` del Interactive Grid.