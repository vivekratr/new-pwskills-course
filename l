[1mdiff --git a/.ipynb_checkpoints/5MarchAssignment-checkpoint.ipynb b/.ipynb_checkpoints/5MarchAssignment-checkpoint.ipynb[m
[1mdeleted file mode 100644[m
[1mindex a936847..0000000[m
[1m--- a/.ipynb_checkpoints/5MarchAssignment-checkpoint.ipynb[m
[1m+++ /dev/null[m
[36m@@ -1,464 +0,0 @@[m
[31m-{[m
[31m- "cells": [[m
[31m-  {[m
[31m-   "cell_type": "markdown",[m
[31m-   "id": "94fa0090-e305-4fa0-bfef-e2936f69b6ce",[m
[31m-   "metadata": {},[m
[31m-   "source": [[m
[31m-    "Q1. How can you create a Bokeh plot using Python code?\n",[m
[31m-    "Ans->\n",[m
[31m-    "1) Import the necessary Bokeh modules: We need to import bokeh.plotting module to create a figure, and bokeh.io module to display the plot.\n",[m
[31m-    "2) Create a figure: You can create a figure by calling the figure() function. You can set the width, height, and other properties of the figure.\n",[m
[31m-    "3) Add a glyph: You can add a glyph (a graphical representation of your data) to the figure. You can add glyphs such as circles, lines, bars, patches, and more.\n",[m
[31m-    "4) Set plot properties: You can set the properties of the plot, such as the title, axis labels, axis ranges, gridlines, and more.\n",[m
[31m-    "5) Display the plot: You can display the plot using the show() function from the bokeh.io module."[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": 4,[m
[31m-   "id": "e8967121-5d6e-48f4-b1f5-aaa872e89d2b",[m
[31m-   "metadata": {},[m
[31m-   "outputs": [[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "text/html": [[m
[31m-       "<style>\n",[m
[31m-       "        .bk-notebook-logo {\n",[m
[31m-       "            display: block;\n",[m
[31m-       "            width: 20px;\n",[m
[31m-       "            height: 20px;\n",[m
[31m-       "            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAOkSURBVDiNjZRtaJVlGMd/1/08zzln5zjP1LWcU9N0NkN8m2CYjpgQYQXqSs0I84OLIC0hkEKoPtiH3gmKoiJDU7QpLgoLjLIQCpEsNJ1vqUOdO7ppbuec5+V+rj4ctwzd8IIbbi6u+8f1539dt3A78eXC7QizUF7gyV1fD1Yqg4JWz84yffhm0qkFqBogB9rM8tZdtwVsPUhWhGcFJngGeWrPzHm5oaMmkfEg1usvLFyc8jLRqDOMru7AyC8saQr7GG7f5fvDeH7Ej8CM66nIF+8yngt6HWaKh7k49Soy9nXurCi1o3qUbS3zWfrYeQDTB/Qj6kX6Ybhw4B+bOYoLKCC9H3Nu/leUTZ1JdRWkkn2ldcCamzrcf47KKXdAJllSlxAOkRgyHsGC/zRday5Qld9DyoM4/q/rUoy/CXh3jzOu3bHUVZeU+DEn8FInkPBFlu3+nW3Nw0mk6vCDiWg8CeJaxEwuHS3+z5RgY+YBR6V1Z1nxSOfoaPa4LASWxxdNp+VWTk7+4vzaou8v8PN+xo+KY2xsw6une2frhw05CTYOmQvsEhjhWjn0bmXPjpE1+kplmmkP3suftwTubK9Vq22qKmrBhpY4jvd5afdRA3wGjFAgcnTK2s4hY0/GPNIb0nErGMCRxWOOX64Z8RAC4oCXdklmEvcL8o0BfkNK4lUg9HTl+oPlQxdNo3Mg4Nv175e/1LDGzZen30MEjRUtmXSfiTVu1kK8W4txyV6BMKlbgk3lMwYCiusNy9fVfvvwMxv8Ynl6vxoByANLTWplvuj/nF9m2+PDtt1eiHPBr1oIfhCChQMBw6Aw0UulqTKZdfVvfG7VcfIqLG9bcldL/+pdWTLxLUy8Qq38heUIjh4XlzZxzQm19lLFlr8vdQ97rjZVOLf8nclzckbcD4wxXMidpX30sFd37Fv/GtwwhzhxGVAprjbg0gCAEeIgwCZyTV2Z1REEW8O4py0wsjeloKoMr6iCY6dP92H6Vw/oTyICIthibxjm/DfN9lVz8IqtqKYLUXfoKVMVQVVJOElGjrnnUt9T9wbgp8AyYKaGlqingHZU/uG2NTZSVqwHQTWkx9hxjkpWDaCg6Ckj5qebgBVbT3V3NNXMSiWSDdGV3hrtzla7J+duwPOToIg42ChPQOQjspnSlp1V+Gjdged7+8UN5CRAV7a5EdFNwCjEaBR27b3W890TE7g24NAP/mMDXRWrGoFPQI9ls/MWO2dWFAar/xcOIImbbpA3zgAAAABJRU5ErkJggg==);\n",[m
[31m-       "        }\n",[m
[31m-       "    </style>\n",[m
[31m-       "    <div>\n",[m
[31m-       "        <a href=\"https://bokeh.org\" target=\"_blank\" class=\"bk-notebook-logo\"></a>\n",[m
[31m-       "        <span id=\"p1483\">Loading BokehJS ...</span>\n",[m
[31m-       "    </div>\n"[m
[31m-      ][m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    },[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "application/javascript": [[m
[31m-       "(function(root) {\n",[m
[31m-       "  function now() {\n",[m
[31m-       "    return new Date();\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  const force = true;\n",[m
[31m-       "\n",[m
[31m-       "  if (typeof root._bokeh_onload_callbacks === \"undefined\" || force === true) {\n",[m
[31m-       "    root._bokeh_onload_callbacks = [];\n",[m
[31m-       "    root._bokeh_is_loading = undefined;\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "const JS_MIME_TYPE = 'application/javascript';\n",[m
[31m-       "  const HTML_MIME_TYPE = 'text/html';\n",[m
[31m-       "  const EXEC_MIME_TYPE = 'application/vnd.bokehjs_exec.v0+json';\n",[m
[31m-       "  const CLASS_NAME = 'output_bokeh rendered_html';\n",[m
[31m-       "\n",[m
[31m-       "  /**\n",[m
[31m-       "   * Render data to the DOM node\n",[m
[31m-       "   */\n",[m
[31m-       "  function render(props, node) {\n",[m
[31m-       "    const script = document.createElement(\"script\");\n",[m
[31m-       "    node.appendChild(script);\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  /**\n",[m
[31m-       "   * Handle when an output is cleared or removed\n",[m
[31m-       "   */\n",[m
[31m-       "  function handleClearOutput(event, handle) {\n",[m
[31m-       "    const cell = handle.cell;\n",[m
[31m-       "\n",[m
[31m-       "    const id = cell.output_area._bokeh_element_id;\n",[m
[31m-       "    const server_id = cell.output_area._bokeh_server_id;\n",[m
[31m-       "    // Clean up Bokeh references\n",[m
[31m-       "    if (id != null && id in Bokeh.index) {\n",[m
[31m-       "      Bokeh.index[id].model.document.clear();\n",[m
[31m-       "      delete Bokeh.index[id];\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    if (server_id !== undefined) {\n",[m
[31m-       "      // Clean up Bokeh references\n",[m
[31m-       "      const cmd_clean = \"from bokeh.io.state import curstate; print(curstate().uuid_to_server['\" + server_id + \"'].get_sessions()[0].document.roots[0]._id)\";\n",[m
[31m-       "      cell.notebook.kernel.execute(cmd_clean, {\n",[m
[31m-       "        iopub: {\n",[m
[31m-       "          output: function(msg) {\n",[m
[31m-       "            const id = msg.content.text.trim();\n",[m
[31m-       "            if (id in Bokeh.index) {\n",[m
[31m-       "              Bokeh.index[id].model.document.clear();\n",[m
[31m-       "              delete Bokeh.index[id];\n",[m
[31m-       "            }\n",[m
[31m-       "          }\n",[m
[31m-       "        }\n",[m
[31m-       "      });\n",[m
[31m-       "      // Destroy server and session\n",[m
[31m-       "      const cmd_destroy = \"import bokeh.io.notebook as ion; ion.destroy_server('\" + server_id + \"')\";\n",[m
[31m-       "      cell.notebook.kernel.execute(cmd_destroy);\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  /**\n",[m
[31m-       "   * Handle when a new output is added\n",[m
[31m-       "   */\n",[m
[31m-       "  function handleAddOutput(event, handle) {\n",[m
[31m-       "    const output_area = handle.output_area;\n",[m
[31m-       "    const output = handle.output;\n",[m
[31m-       "\n",[m
[31m-       "    // limit handleAddOutput to display_data with EXEC_MIME_TYPE content only\n",[m
[31m-       "    if ((output.output_type != \"display_data\") || (!Object.prototype.hasOwnProperty.call(output.data, EXEC_MIME_TYPE))) {\n",[m
[31m-       "      return\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    const toinsert = output_area.element.find(\".\" + CLASS_NAME.split(' ')[0]);\n",[m
[31m-       "\n",[m
[31m-       "    if (output.metadata[EXEC_MIME_TYPE][\"id\"] !== undefined) {\n",[m
[31m-       "      toinsert[toinsert.length - 1].firstChild.textContent = output.data[JS_MIME_TYPE];\n",[m
[31m-       "      // store reference to embed id on output_area\n",[m
[31m-       "      output_area._bokeh_element_id = output.metadata[EXEC_MIME_TYPE][\"id\"];\n",[m
[31m-       "    }\n",[m
[31m-       "    if (output.metadata[EXEC_MIME_TYPE][\"server_id\"] !== undefined) {\n",[m
[31m-       "      const bk_div = document.createElement(\"div\");\n",[m
[31m-       "      bk_div.innerHTML = output.data[HTML_MIME_TYPE];\n",[m
[31m-       "      const script_attrs = bk_div.children[0].attributes;\n",[m
[31m-       "      for (let i = 0; i < script_attrs.length; i++) {\n",[m
[31m-       "        toinsert[toinsert.length - 1].firstChild.setAttribute(script_attrs[i].name, script_attrs[i].value);\n",[m
[31m-       "        toinsert[toinsert.length - 1].firstChild.textContent = bk_div.children[0].textContent\n",[m
[31m-       "      }\n",[m
[31m-       "      // store reference to server id on output_area\n",[m
[31m-       "      output_area._bokeh_server_id = output.metadata[EXEC_MIME_TYPE][\"server_id\"];\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  function register_renderer(events, OutputArea) {\n",[m
[31m-       "\n",[m
[31m-       "    function append_mime(data, metadata, element) {\n",[m
[31m-       "      // create a DOM node to render to\n",[m
[31m-       "      const toinsert = this.create_output_subarea(\n",[m
[31m-       "        metadata,\n",[m
[31m-       "        CLASS_NAME,\n",[m
[31m-       "        EXEC_MIME_TYPE\n",[m
[31m-       "      );\n",[m
[31m-       "      this.keyboard_manager.register_events(toinsert);\n",[m
[31m-       "      // Render to node\n",[m
[31m-       "      const props = {data: data, metadata: metadata[EXEC_MIME_TYPE]};\n",[m
[31m-       "      render(props, toinsert[toinsert.length - 1]);\n",[m
[31m-       "      element.append(toinsert);\n",[m
[31m-       "      return toinsert\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    /* Handle when an output is cleared or removed */\n",[m
[31m-       "    events.on('clear_output.CodeCell', handleClearOutput);\n",[m
[31m-       "    events.on('delete.Cell', handleClearOutput);\n",[m
[31m-       "\n",[m
[31m-       "    /* Handle when a new output is added */\n",[m
[31m-       "    events.on('output_added.OutputArea', handleAddOutput);\n",[m
[31m-       "\n",[m
[31m-       "    /**\n",[m
[31m-       "     * Register the mime type and append_mime function with output_area\n",[m
[31m-       "     */\n",[m
[31m-       "    OutputArea.prototype.register_mime_type(EXEC_MIME_TYPE, append_mime, {\n",[m
[31m-       "      /* Is output safe? */\n",[m
[31m-       "      safe: true,\n",[m
[31m-       "      /* Index of renderer in `output_area.display_order` */\n",[m
[31m-       "      index: 0\n",[m
[31m-       "    });\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  // register the mime type if in Jupyter Notebook environment and previously unregistered\n",[m
[31m-       "  if (root.Jupyter !== undefined) {\n",[m
[31m-       "    const events = require('base/js/events');\n",[m
[31m-       "    const OutputArea = require('notebook/js/outputarea').OutputArea;\n",[m
[31m-       "\n",[m
[31m-       "    if (OutputArea.prototype.mime_types().indexOf(EXEC_MIME_TYPE) == -1) {\n",[m
[31m-       "      register_renderer(events, OutputArea);\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "  if (typeof (root._bokeh_timeout) === \"undefined\" || force === true) {\n",[m
[31m-       "    root._bokeh_timeout = Date.now() + 5000;\n",[m
[31m-       "    root._bokeh_failed_load = false;\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  const NB_LOAD_WARNING = {'data': {'text/html':\n",[m
[31m-       "     \"<div style='background-color: #fdd'>\\n\"+\n",[m
[31m-       "     \"<p>\\n\"+\n",[m
[31m-       "     \"BokehJS does not appear to have successfully loaded. If loading BokehJS from CDN, this \\n\"+\n",[m
[31m-       "     \"may be due to a slow or bad network connection. Possible fixes:\\n\"+\n",[m
[31m-       "     \"</p>\\n\"+\n",[m
[31m-       "     \"<ul>\\n\"+\n",[m
[31m-       "     \"<li>re-rerun `output_notebook()` to attempt to load from CDN again, or</li>\\n\"+\n",[m
[31m-       "     \"<li>use INLINE resources instead, as so:</li>\\n\"+\n",[m
[31m-       "     \"</ul>\\n\"+\n",[m
[31m-       "     \"<code>\\n\"+\n",[m
[31m-       "     \"from bokeh.resources import INLINE\\n\"+\n",[m
[31m-       "     \"output_notebook(resources=INLINE)\\n\"+\n",[m
[31m-       "     \"</code>\\n\"+\n",[m
[31m-       "     \"</div>\"}};\n",[m
[31m-       "\n",[m
[31m-       "  function display_loaded() {\n",[m
[31m-       "    const el = document.getElementById(\"p1483\");\n",[m
[31m-       "    if (el != null) {\n",[m
[31m-       "      el.textContent = \"BokehJS is loading...\";\n",[m
[31m-       "    }\n",[m
[31m-       "    if (root.Bokeh !== undefined) {\n",[m
[31m-       "      if (el != null) {\n",[m
[31m-       "        el.textContent = \"BokehJS \" + root.Bokeh.version + \" successfully loaded.\";\n",[m
[31m-       "      }\n",[m
[31m-       "    } else if (Date.now() < root._bokeh_timeout) {\n",[m
[31m-       "      setTimeout(display_loaded, 100)\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  function run_callbacks() {\n",[m
[31m-       "    try {\n",[m
[31m-       "      root._bokeh_onload_callbacks.forEach(function(callback) {\n",[m
[31m-       "        if (callback != null)\n",[m
[31m-       "          callback();\n",[m
[31m-       "      });\n",[m
[31m-       "    } finally {\n",[m
[31m-       "      delete root._bokeh_onload_callbacks\n",[m
[31m-       "    }\n",[m
[31m-       "    console.debug(\"Bokeh: all callbacks have finished\");\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  function load_libs(css_urls, js_urls, callback) {\n",[m
[31m-       "    if (css_urls == null) css_urls = [];\n",[m
[31m-       "    if (js_urls == null) js_urls = [];\n",[m
[31m-       "\n",[m
[31m-       "    root._bokeh_onload_callbacks.push(callback);\n",[m
[31m-       "    if (root._bokeh_is_loading > 0) {\n",[m
[31m-       "      console.debug(\"Bokeh: BokehJS is being loaded, scheduling callback at\", now());\n",[m
[31m-       "      return null;\n",[m
[31m-       "    }\n",[m
[31m-       "    if (js_urls == null || js_urls.length === 0) {\n",[m
[31m-       "      run_callbacks();\n",[m
[31m-       "      return null;\n",[m
[31m-       "    }\n",[m
[31m-       "    console.debug(\"Bokeh: BokehJS not loaded, scheduling load and callback at\", now());\n",[m
[31m-       "    root._bokeh_is_loading = css_urls.length + js_urls.length;\n",[m
[31m-       "\n",[m
[31m-       "    function on_load() {\n",[m
[31m-       "      root._bokeh_is_loading--;\n",[m
[31m-       "      if (root._bokeh_is_loading === 0) {\n",[m
[31m-       "        console.debug(\"Bokeh: all BokehJS libraries/stylesheets loaded\");\n",[m
[31m-       "        run_callbacks()\n",[m
[31m-       "      }\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    function on_error(url) {\n",[m
[31m-       "      console.error(\"failed to load \" + url);\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    for (let i = 0; i < css_urls.length; i++) {\n",[m
[31m-       "      const url = css_urls[i];\n",[m
[31m-       "      const element = document.createElement(\"link\");\n",[m
[31m-       "      element.onload = on_load;\n",[m
[31m-       "      element.onerror = on_error.bind(null, url);\n",[m
[31m-       "      element.rel = \"stylesheet\";\n",[m
[31m-       "      element.type = \"text/css\";\n",[m
[31m-       "      element.href = url;\n",[m
[31m-       "      console.debug(\"Bokeh: injecting link tag for BokehJS stylesheet: \", url);\n",[m
[31m-       "      document.body.appendChild(element);\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    for (let i = 0; i < js_urls.length; i++) {\n",[m
[31m-       "      const url = js_urls[i];\n",[m
[31m-       "      const element = document.createElement('script');\n",[m
[31m-       "      element.onload = on_load;\n",[m
[31m-       "      element.onerror = on_error.bind(null, url);\n",[m
[31m-       "      element.async = false;\n",[m
[31m-       "      element.src = url;\n",[m
[31m-       "      console.debug(\"Bokeh: injecting script tag for BokehJS library: \", url);\n",[m
[31m-       "      document.head.appendChild(element);\n",[m
[31m-       "    }\n",[m
[31m-       "  };\n",[m
[31m-       "\n",[m
[31m-       "  function inject_raw_css(css) {\n",[m
[31m-       "    const element = document.createElement(\"style\");\n",[m
[31m-       "    element.appendChild(document.createTextNode(css));\n",[m
[31m-       "    document.body.appendChild(element);\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  const js_urls = [\"https://cdn.bokeh.org/bokeh/release/bokeh-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-gl-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-widgets-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-tables-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-mathjax-3.0.3.min.js\"];\n",[m
[31m-       "  const css_urls = [];\n",[m
[31m-       "\n",[m
[31m-       "  const inline_js = [    function(Bokeh) {\n",[m
[31m-       "      Bokeh.set_log_level(\"info\");\n",[m
[31m-       "    },\n",[m
[31m-       "function(Bokeh) {\n",[m
[31m-       "    }\n",[m
[31m-       "  ];\n",[m
[31m-       "\n",[m
[31m-       "  function run_inline_js() {\n",[m
[31m-       "    if (root.Bokeh !== undefined || force === true) {\n",[m
[31m-       "          for (let i = 0; i < inline_js.length; i++) {\n",[m
[31m-       "      inline_js[i].call(root, root.Bokeh);\n",[m
[31m-       "    }\n",[m
[31m-       "if (force === true) {\n",[m
[31m-       "        display_loaded();\n",[m
[31m-       "      }} else if (Date.now() < root._bokeh_timeout) {\n",[m
[31m-       "      setTimeout(run_inline_js, 100);\n",[m
[31m-       "    } else if (!root._bokeh_failed_load) {\n",[m
[31m-       "      console.log(\"Bokeh: BokehJS failed to load within specified timeout.\");\n",[m
[31m-       "      root._bokeh_failed_load = true;\n",[m
[31m-       "    } else if (force !== true) {\n",[m
[31m-       "      const cell = $(document.getElementById(\"p1483\")).parents('.cell').data().cell;\n",[m
[31m-       "      cell.output_area.append_execute_result(NB_LOAD_WARNING)\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  if (root._bokeh_is_loading === 0) {\n",[m
[31m-       "    console.debug(\"Bokeh: BokehJS loaded, going straight to plotting\");\n",[m
[31m-       "    run_inline_js();\n",[m
[31m-       "  } else {\n",[m
[31m-       "    load_libs(css_urls, js_urls, function() {\n",[m
[31m-       "      console.debug(\"Bokeh: BokehJS plotting callback run at\", now());\n",[m
[31m-       "      run_inline_js();\n",[m
[31m-       "    });\n",[m
[31m-       "  }\n",[m
[31m-       "}(window));"[m
[31m-      ],[m
[31m-      "application/vnd.bokehjs_load.v0+json": "(function(root) {\n  function now() {\n    return new Date();\n  }\n\n  const force = true;\n\n  if (typeof root._bokeh_onload_callbacks === \"undefined\" || force === true) {\n    root._bokeh_onload_callbacks = [];\n    root._bokeh_is_loading = undefined;\n  }\n\n\n  if (typeof (root._bokeh_timeout) === \"undefined\" || force === true) {\n    root._bokeh_timeout = Date.now() + 5000;\n    root._bokeh_failed_load = false;\n  }\n\n  const NB_LOAD_WARNING = {'data': {'text/html':\n     \"<div style='background-color: #fdd'>\\n\"+\n     \"<p>\\n\"+\n     \"BokehJS does not appear to have successfully loaded. If loading BokehJS from CDN, this \\n\"+\n     \"may be due to a slow or bad network connection. Possible fixes:\\n\"+\n     \"</p>\\n\"+\n     \"<ul>\\n\"+\n     \"<li>re-rerun `output_notebook()` to attempt to load from CDN again, or</li>\\n\"+\n     \"<li>use INLINE resources instead, as so:</li>\\n\"+\n     \"</ul>\\n\"+\n     \"<code>\\n\"+\n     \"from bokeh.resources import INLINE\\n\"+\n     \"output_notebook(resources=INLINE)\\n\"+\n     \"</code>\\n\"+\n     \"</div>\"}};\n\n  function display_loaded() {\n    const el = document.getElementById(\"p1483\");\n    if (el != null) {\n      el.textContent = \"BokehJS is loading...\";\n    }\n    if (root.Bokeh !== undefined) {\n      if (el != null) {\n        el.textContent = \"BokehJS \" + root.Bokeh.version + \" successfully loaded.\";\n      }\n    } else if (Date.now() < root._bokeh_timeout) {\n      setTimeout(display_loaded, 100)\n    }\n  }\n\n  function run_callbacks() {\n    try {\n      root._bokeh_onload_callbacks.forEach(function(callback) {\n        if (callback != null)\n          callback();\n      });\n    } finally {\n      delete root._bokeh_onload_callbacks\n    }\n    console.debug(\"Bokeh: all callbacks have finished\");\n  }\n\n  function load_libs(css_urls, js_urls, callback) {\n    if (css_urls == null) css_urls = [];\n    if (js_urls == null) js_urls = [];\n\n    root._bokeh_onload_callbacks.push(callback);\n    if (root._bokeh_is_loading > 0) {\n      console.debug(\"Bokeh: BokehJS is being loaded, scheduling callback at\", now());\n      return null;\n    }\n    if (js_urls == null || js_urls.length === 0) {\n      run_callbacks();\n      return null;\n    }\n    console.debug(\"Bokeh: BokehJS not loaded, scheduling load and callback at\", now());\n    root._bokeh_is_loading = css_urls.length + js_urls.length;\n\n    function on_load() {\n      root._bokeh_is_loading--;\n      if (root._bokeh_is_loading === 0) {\n        console.debug(\"Bokeh: all BokehJS libraries/stylesheets loaded\");\n        run_callbacks()\n      }\n    }\n\n    function on_error(url) {\n      console.error(\"failed to load \" + url);\n    }\n\n    for (let i = 0; i < css_urls.length; i++) {\n      const url = css_urls[i];\n      const element = document.createElement(\"link\");\n      element.onload = on_load;\n      element.onerror = on_error.bind(null, url);\n      element.rel = \"stylesheet\";\n      element.type = \"text/css\";\n      element.href = url;\n      console.debug(\"Bokeh: injecting link tag for BokehJS stylesheet: \", url);\n      document.body.appendChild(element);\n    }\n\n    for (let i = 0; i < js_urls.length; i++) {\n      const url = js_urls[i];\n      const element = document.createElement('script');\n      element.onload = on_load;\n      element.onerror = on_error.bind(null, url);\n      element.async = false;\n      element.src = url;\n      console.debug(\"Bokeh: injecting script tag for BokehJS library: \", url);\n      document.head.appendChild(element);\n    }\n  };\n\n  function inject_raw_css(css) {\n    const element = document.createElement(\"style\");\n    element.appendChild(document.createTextNode(css));\n    document.body.appendChild(element);\n  }\n\n  const js_urls = [\"https://cdn.bokeh.org/bokeh/release/bokeh-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-gl-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-widgets-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-tables-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-mathjax-3.0.3.min.js\"];\n  const css_urls = [];\n\n  const inline_js = [    function(Bokeh) {\n      Bokeh.set_log_level(\"info\");\n    },\nfunction(Bokeh) {\n    }\n  ];\n\n  function run_inline_js() {\n    if (root.Bokeh !== undefined || force === true) {\n          for (let i = 0; i < inline_js.length; i++) {\n      inline_js[i].call(root, root.Bokeh);\n    }\nif (force === true) {\n        display_loaded();\n      }} else if (Date.now() < root._bokeh_timeout) {\n      setTimeout(run_inline_js, 100);\n    } else if (!root._bokeh_failed_load) {\n      console.log(\"Bokeh: BokehJS failed to load within specified timeout.\");\n      root._bokeh_failed_load = true;\n    } else if (force !== true) {\n      const cell = $(document.getElementById(\"p1483\")).parents('.cell').data().cell;\n      cell.output_area.append_execute_result(NB_LOAD_WARNING)\n    }\n  }\n\n  if (root._bokeh_is_loading === 0) {\n    console.debug(\"Bokeh: BokehJS loaded, going straight to plotting\");\n    run_inline_js();\n  } else {\n    load_libs(css_urls, js_urls, function() {\n      console.debug(\"Bokeh: BokehJS plotting callback run at\", now());\n      run_inline_js();\n    });\n  }\n}(window));"[m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    },[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "text/html": [[m
[31m-       "\n",[m
[31m-       "  <div id=\"e976a198-0d51-43de-8382-4201e9f92cc6\" data-root-id=\"p1487\" style=\"display: contents;\"></div>\n"[m
[31m-      ][m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    },[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "application/javascript": [[m
[31m-       "(function(root) {\n",[m
[31m-       "  function embed_document(root) {\n",[m
[31m-       "  const docs_json = {\"8d151f75-74e3-454e-9286-4502bac1942c\":{\"version\":\"3.0.3\",\"title\":\"Bokeh Application\",\"defs\":[],\"roots\":[{\"type\":\"object\",\"name\":\"Figure\",\"id\":\"p1487\",\"attributes\":{\"x_range\":{\"type\":\"object\",\"name\":\"Range1d\",\"id\":\"p1496\",\"attributes\":{\"end\":6}},\"y_range\":{\"type\":\"object\",\"name\":\"Range1d\",\"id\":\"p1498\",\"attributes\":{\"end\":10}},\"x_scale\":{\"type\":\"object\",\"name\":\"LinearScale\",\"id\":\"p1500\"},\"y_scale\":{\"type\":\"object\",\"name\":\"LinearScale\",\"id\":\"p1502\"},\"title\":{\"type\":\"object\",\"name\":\"Title\",\"id\":\"p1495\"},\"renderers\":[{\"type\":\"object\",\"name\":\"GlyphRenderer\",\"id\":\"p1539\",\"attributes\":{\"data_source\":{\"type\":\"object\",\"name\":\"ColumnDataSource\",\"id\":\"p1484\",\"attributes\":{\"selected\":{\"type\":\"object\",\"name\":\"Selection\",\"id\":\"p1485\",\"attributes\":{\"indices\":[],\"line_indices\":[]}},\"selection_policy\":{\"type\":\"object\",\"name\":\"UnionRenderers\",\"id\":\"p1486\"},\"data\":{\"type\":\"map\",\"entries\":[[\"x\",[1,2,3,4,5]],[\"y\",[6,4,7,8,9]],[\"color\",[\"red\",\"green\",\"blue\",\"orange\",\"purple\"]]]}}},\"view\":{\"type\":\"object\",\"name\":\"CDSView\",\"id\":\"p1540\",\"attributes\":{\"filter\":{\"type\":\"object\",\"name\":\"AllIndices\",\"id\":\"p1541\"}}},\"glyph\":{\"type\":\"object\",\"name\":\"Circle\",\"id\":\"p1536\",\"attributes\":{\"x\":{\"type\":\"field\",\"field\":\"x\"},\"y\":{\"type\":\"field\",\"field\":\"y\"},\"size\":{\"type\":\"value\",\"value\":20},\"line_color\":{\"type\":\"field\",\"field\":\"color\"},\"fill_color\":{\"type\":\"field\",\"field\":\"color\"},\"hatch_color\":{\"type\":\"field\",\"field\":\"color\"}}},\"nonselection_glyph\":{\"type\":\"object\",\"name\":\"Circle\",\"id\":\"p1537\",\"attributes\":{\"x\":{\"type\":\"field\",\"field\":\"x\"},\"y\":{\"type\":\"field\",\"field\":\"y\"},\"size\":{\"type\":\"value\",\"value\":20},\"line_color\":{\"type\":\"field\",\"field\":\"color\"},\"line_alpha\":{\"type\":\"value\",\"value\":0.1},\"fill_color\":{\"type\":\"field\",\"field\":\"color\"},\"fill_alpha\":{\"type\":\"value\",\"value\":0.1},\"hatch_color\":{\"type\":\"field\",\"field\":\"color\"},\"hatch_alpha\":{\"type\":\"value\",\"value\":0.1}}},\"muted_glyph\":{\"type\":\"object\",\"name\":\"Circle\",\"id\":\"p1538\",\"attributes\":{\"x\":{\"type\":\"field\",\"field\":\"x\"},\"y\":{\"type\":\"field\",\"field\":\"y\"},\"size\":{\"type\":\"value\",\"value\":20},\"line_color\":{\"type\":\"field\",\"field\":\"color\"},\"line_alpha\":{\"type\":\"value\",\"value\":0.2},\"fill_color\":{\"type\":\"field\",\"field\":\"color\"},\"fill_alpha\":{\"type\":\"value\",\"value\":0.2},\"hatch_color\":{\"type\":\"field\",\"field\":\"color\"},\"hatch_alpha\":{\"type\":\"value\",\"value\":0.2}}}}}],\"toolbar\":{\"type\":\"object\",\"name\":\"Toolbar\",\"id\":\"p1490\",\"attributes\":{\"tools\":[{\"type\":\"object\",\"name\":\"PanTool\",\"id\":\"p1518\"},{\"type\":\"object\",\"name\":\"WheelZoomTool\",\"id\":\"p1519\"},{\"type\":\"object\",\"name\":\"BoxZoomTool\",\"id\":\"p1520\",\"attributes\":{\"overlay\":{\"type\":\"object\",\"name\":\"BoxAnnotation\",\"id\":\"p1521\",\"attributes\":{\"syncable\":false,\"level\":\"overlay\",\"visible\":false,\"left_units\":\"canvas\",\"right_units\":\"canvas\",\"bottom_units\":\"canvas\",\"top_units\":\"canvas\",\"line_color\":\"black\",\"line_alpha\":1.0,\"line_width\":2,\"line_dash\":[4,4],\"fill_color\":\"lightgrey\",\"fill_alpha\":0.5}}}},{\"type\":\"object\",\"name\":\"SaveTool\",\"id\":\"p1522\"},{\"type\":\"object\",\"name\":\"ResetTool\",\"id\":\"p1523\"},{\"type\":\"object\",\"name\":\"HelpTool\",\"id\":\"p1524\"}]}},\"left\":[{\"type\":\"object\",\"name\":\"LinearAxis\",\"id\":\"p1511\",\"attributes\":{\"ticker\":{\"type\":\"object\",\"name\":\"BasicTicker\",\"id\":\"p1512\",\"attributes\":{\"mantissas\":[1,2,5]}},\"formatter\":{\"type\":\"object\",\"name\":\"BasicTickFormatter\",\"id\":\"p1513\"},\"major_label_policy\":{\"type\":\"object\",\"name\":\"AllLabels\",\"id\":\"p1514\"}}}],\"below\":[{\"type\":\"object\",\"name\":\"LinearAxis\",\"id\":\"p1504\",\"attributes\":{\"ticker\":{\"type\":\"object\",\"name\":\"BasicTicker\",\"id\":\"p1505\",\"attributes\":{\"mantissas\":[1,2,5]}},\"formatter\":{\"type\":\"object\",\"name\":\"BasicTickFormatter\",\"id\":\"p1506\"},\"major_label_policy\":{\"type\":\"object\",\"name\":\"AllLabels\",\"id\":\"p1507\"}}}],\"center\":[{\"type\":\"object\",\"name\":\"Grid\",\"id\":\"p1510\",\"attributes\":{\"axis\":{\"id\":\"p1504\"}}},{\"type\":\"object\",\"name\":\"Grid\",\"id\":\"p1517\",\"attributes\":{\"dimension\":1,\"axis\":{\"id\":\"p1511\"}}}]}}]}};\n",[m
[31m-       "  const render_items = [{\"docid\":\"8d151f75-74e3-454e-9286-4502bac1942c\",\"roots\":{\"p1487\":\"e976a198-0d51-43de-8382-4201e9f92cc6\"},\"root_ids\":[\"p1487\"]}];\n",[m
[31m-       "  root.Bokeh.embed.embed_items_notebook(docs_json, render_items);\n",[m
[31m-       "  }\n",[m
[31m-       "  if (root.Bokeh !== undefined) {\n",[m
[31m-       "    embed_document(root);\n",[m
[31m-       "  } else {\n",[m
[31m-       "    let attempts = 0;\n",[m
[31m-       "    const timer = setInterval(function(root) {\n",[m
[31m-       "      if (root.Bokeh !== undefined) {\n",[m
[31m-       "        clearInterval(timer);\n",[m
[31m-       "        embed_document(root);\n",[m
[31m-       "      } else {\n",[m
[31m-       "        attempts++;\n",[m
[31m-       "        if (attempts > 100) {\n",[m
[31m-       "          clearInterval(timer);\n",[m
[31m-       "          console.log(\"Bokeh: ERROR: Unable to run BokehJS code because BokehJS library is missing\");\n",[m
[31m-       "        }\n",[m
[31m-       "      }\n",[m
[31m-       "    }, 10, root)\n",[m
[31m-       "  }\n",[m
[31m-       "})(window);"[m
[31m-      ],[m
[31m-      "application/vnd.bokehjs_exec.v0+json": ""[m
[31m-     },[m
[31m-     "metadata": {[m
[31m-      "application/vnd.bokehjs_exec.v0+json": {[m
[31m-       "id": "p1487"[m
[31m-      }[m
[31m-     },[m
[31m-     "output_type": "display_data"[m
[31m-    }[m
[31m-   ],[m
[31m-   "source": [[m
[31m-    "# Q2. What are glyphs in Bokeh, and how can you add them to a Bokeh plot? Explain with an example.\n",[m
[31m-    "# Ans-> \n",[m
[31m-    "# 1) In Bokeh, glyphs are visual shapes or markers that can be used to represent data in a plot.\n",[m
[31m-    "# 2) They include squares, circles, triangles, lines, and many others.\n",[m
[31m-    "# 3) Glyphs can be added to a Bokeh plot by creating a glyph renderer and adding it to the plot.\n",[m
[31m-    "# Example\n",[m
[31m-    "from bokeh.plotting import figure, show\n",[m
[31m-    "import bokeh.io as bo\n",[m
[31m-    "import bokeh.plotting as bp\n",[m
[31m-    "from bokeh.models import ColumnDataSource\n",[m
[31m-    "bo.output_notebook()\n",[m
[31m-    "source = ColumnDataSource(data={\n",[m
[31m-    "    'x': [1, 2, 3, 4, 5],\n",[m
[31m-    "    'y': [6, 4, 7, 8, 9],\n",[m
[31m-    "    'color': ['red', 'green', 'blue', 'orange', 'purple']\n",[m
[31m-    "})\n",[m
[31m-    "p = figure(x_range=(0, 6), y_range=(0, 10))\n",[m
[31m-    "p.circle('x', 'y', size=20, color='color', source=source)\n",[m
[31m-    "show(p)"[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "markdown",[m
[31m-   "id": "1da4156f-1da1-417e-9715-6ddcdd2609de",[m
[31m-   "metadata": {},[m
[31m-   "source": [[m
[31m-    "Q3. How can you customize the appearance of a Bokeh plot, including the axes, title, and legend?\n",[m
[31m-    "Ans->\n",[m
[31m-    "1) Changing the title: You can set the title of a plot using the title attribute of the figure object.\n",[m
[31m-    "2) Changing the axes labels: You can set the labels for the x and y axes using the xaxis and yaxis attributes of the figure object.\n",[m
[31m-    "3) Changing the legend: You can customize the legend of a plot using the legend attribute of the figure object.\n"[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "markdown",[m
[31m-   "id": "0e4b5d2f-ca71-4ce9-af78-b3d0a1678b0c",[m
[31m-   "metadata": {},[m
[31m-   "source": [[m
[31m-    "Q4. What is a Bokeh server, and how can you use it to create interactive plots that can be updated in\n",[m
[31m-    "real time?\n",[m
[31m-    "Ans->\n",[m
[31m-    "1) A Bokeh server is a Python process that runs a Bokeh application, which can create and update interactive plots in real-time.\n",[m
[31m-    "2) The Bokeh server allows users to create interactive web-based applications using Bokeh, which can be accessed through a web browser.\n",[m
[31m-    "3) To use the Bokeh server, you first need to create a Bokeh application using the curdoc() function from the bokeh.io module.\n",[m
[31m-    "4) This function returns the current document for the Bokeh application. You can then add Bokeh models, such as plots, layouts, widgets, and callbacks, to the document.\n",[m
[31m-    "5) Once you have created the Bokeh application, you can start the Bokeh server using the bokeh serve command in the terminal or command prompt. \n",[m
[31m-    "6) This command takes the path to the directory containing the Bokeh application as an argument.\n",[m
[31m-    "7) Once the server is started, you can access the Bokeh application in a web browser by navigating to the URL specified by the server."[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "markdown",[m
[31m-   "id": "cb2020cd-dc27-4ef2-981c-e2555d77fbed",[m
[31m-   "metadata": {},[m
[31m-   "source": [[m
[31m-    "Q5. How can you embed a Bokeh plot into a web page or dashboard using Flask or Django?\n",[m
[31m-    "Ans->\n",[m
[31m-    "1) Create a Bokeh plot using the Bokeh library in Python.\n",[m
[31m-    "2) Convert the Bokeh plot into HTML code using the bokeh.embed module.\n",[m
[31m-    "3) Create a Flask or Django web application that serves the HTML code of the Bokeh plot.\n",[m
[31m-    "4) Embed the HTML code of the Bokeh plot in the web page or dashboard using an iframe."[m
[31m-   ][m
[31m-  }[m
[31m- ],[m
[31m- "metadata": {[m
[31m-  "kernelspec": {[m
[31m-   "display_name": "Python 3 (ipykernel)",[m
[31m-   "language": "python",[m
[31m-   "name": "python3"[m
[31m-  },[m
[31m-  "language_info": {[m
[31m-   "codemirror_mode": {[m
[31m-    "name": "ipython",[m
[31m-    "version": 3[m
[31m-   },[m
[31m-   "file_extension": ".py",[m
[31m-   "mimetype": "text/x-python",[m
[31m-   "name": "python",[m
[31m-   "nbconvert_exporter": "python",[m
[31m-   "pygments_lexer": "ipython3",[m
[31m-   "version": "3.10.8"[m
[31m-  }[m
[31m- },[m
[31m- "nbformat": 4,[m
[31m- "nbformat_minor": 5[m
[31m-}[m
[1mdiff --git a/.ipynb_checkpoints/bokeh-checkpoint.ipynb b/.ipynb_checkpoints/bokeh-checkpoint.ipynb[m
[1mdeleted file mode 100644[m
[1mindex d0da1b4..0000000[m
[1m--- a/.ipynb_checkpoints/bokeh-checkpoint.ipynb[m
[1m+++ /dev/null[m
[36m@@ -1,353 +0,0 @@[m
[31m-{[m
[31m- "cells": [[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": 1,[m
[31m-   "id": "6945debb-de3d-4f08-a232-48fa91ecaa6b",[m
[31m-   "metadata": {},[m
[31m-   "outputs": [[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "text/html": [[m
[31m-       "<style>\n",[m
[31m-       "        .bk-notebook-logo {\n",[m
[31m-       "            display: block;\n",[m
[31m-       "            width: 20px;\n",[m
[31m-       "            height: 20px;\n",[m
[31m-       "            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAOkSURBVDiNjZRtaJVlGMd/1/08zzln5zjP1LWcU9N0NkN8m2CYjpgQYQXqSs0I84OLIC0hkEKoPtiH3gmKoiJDU7QpLgoLjLIQCpEsNJ1vqUOdO7ppbuec5+V+rj4ctwzd8IIbbi6u+8f1539dt3A78eXC7QizUF7gyV1fD1Yqg4JWz84yffhm0qkFqBogB9rM8tZdtwVsPUhWhGcFJngGeWrPzHm5oaMmkfEg1usvLFyc8jLRqDOMru7AyC8saQr7GG7f5fvDeH7Ej8CM66nIF+8yngt6HWaKh7k49Soy9nXurCi1o3qUbS3zWfrYeQDTB/Qj6kX6Ybhw4B+bOYoLKCC9H3Nu/leUTZ1JdRWkkn2ldcCamzrcf47KKXdAJllSlxAOkRgyHsGC/zRday5Qld9DyoM4/q/rUoy/CXh3jzOu3bHUVZeU+DEn8FInkPBFlu3+nW3Nw0mk6vCDiWg8CeJaxEwuHS3+z5RgY+YBR6V1Z1nxSOfoaPa4LASWxxdNp+VWTk7+4vzaou8v8PN+xo+KY2xsw6une2frhw05CTYOmQvsEhjhWjn0bmXPjpE1+kplmmkP3suftwTubK9Vq22qKmrBhpY4jvd5afdRA3wGjFAgcnTK2s4hY0/GPNIb0nErGMCRxWOOX64Z8RAC4oCXdklmEvcL8o0BfkNK4lUg9HTl+oPlQxdNo3Mg4Nv175e/1LDGzZen30MEjRUtmXSfiTVu1kK8W4txyV6BMKlbgk3lMwYCiusNy9fVfvvwMxv8Ynl6vxoByANLTWplvuj/nF9m2+PDtt1eiHPBr1oIfhCChQMBw6Aw0UulqTKZdfVvfG7VcfIqLG9bcldL/+pdWTLxLUy8Qq38heUIjh4XlzZxzQm19lLFlr8vdQ97rjZVOLf8nclzckbcD4wxXMidpX30sFd37Fv/GtwwhzhxGVAprjbg0gCAEeIgwCZyTV2Z1REEW8O4py0wsjeloKoMr6iCY6dP92H6Vw/oTyICIthibxjm/DfN9lVz8IqtqKYLUXfoKVMVQVVJOElGjrnnUt9T9wbgp8AyYKaGlqingHZU/uG2NTZSVqwHQTWkx9hxjkpWDaCg6Ckj5qebgBVbT3V3NNXMSiWSDdGV3hrtzla7J+duwPOToIg42ChPQOQjspnSlp1V+Gjdged7+8UN5CRAV7a5EdFNwCjEaBR27b3W890TE7g24NAP/mMDXRWrGoFPQI9ls/MWO2dWFAar/xcOIImbbpA3zgAAAABJRU5ErkJggg==);\n",[m
[31m-       "        }\n",[m
[31m-       "    </style>\n",[m
[31m-       "    <div>\n",[m
[31m-       "        <a href=\"https://bokeh.org\" target=\"_blank\" class=\"bk-notebook-logo\"></a>\n",[m
[31m-       "        <span id=\"p1001\">Loading BokehJS ...</span>\n",[m
[31m-       "    </div>\n"[m
[31m-      ][m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    },[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "application/javascript": [[m
[31m-       "(function(root) {\n",[m
[31m-       "  function now() {\n",[m
[31m-       "    return new Date();\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  const force = true;\n",[m
[31m-       "\n",[m
[31m-       "  if (typeof root._bokeh_onload_callbacks === \"undefined\" || force === true) {\n",[m
[31m-       "    root._bokeh_onload_callbacks = [];\n",[m
[31m-       "    root._bokeh_is_loading = undefined;\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "const JS_MIME_TYPE = 'application/javascript';\n",[m
[31m-       "  const HTML_MIME_TYPE = 'text/html';\n",[m
[31m-       "  const EXEC_MIME_TYPE = 'application/vnd.bokehjs_exec.v0+json';\n",[m
[31m-       "  const CLASS_NAME = 'output_bokeh rendered_html';\n",[m
[31m-       "\n",[m
[31m-       "  /**\n",[m
[31m-       "   * Render data to the DOM node\n",[m
[31m-       "   */\n",[m
[31m-       "  function render(props, node) {\n",[m
[31m-       "    const script = document.createElement(\"script\");\n",[m
[31m-       "    node.appendChild(script);\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  /**\n",[m
[31m-       "   * Handle when an output is cleared or removed\n",[m
[31m-       "   */\n",[m
[31m-       "  function handleClearOutput(event, handle) {\n",[m
[31m-       "    const cell = handle.cell;\n",[m
[31m-       "\n",[m
[31m-       "    const id = cell.output_area._bokeh_element_id;\n",[m
[31m-       "    const server_id = cell.output_area._bokeh_server_id;\n",[m
[31m-       "    // Clean up Bokeh references\n",[m
[31m-       "    if (id != null && id in Bokeh.index) {\n",[m
[31m-       "      Bokeh.index[id].model.document.clear();\n",[m
[31m-       "      delete Bokeh.index[id];\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    if (server_id !== undefined) {\n",[m
[31m-       "      // Clean up Bokeh references\n",[m
[31m-       "      const cmd_clean = \"from bokeh.io.state import curstate; print(curstate().uuid_to_server['\" + server_id + \"'].get_sessions()[0].document.roots[0]._id)\";\n",[m
[31m-       "      cell.notebook.kernel.execute(cmd_clean, {\n",[m
[31m-       "        iopub: {\n",[m
[31m-       "          output: function(msg) {\n",[m
[31m-       "            const id = msg.content.text.trim();\n",[m
[31m-       "            if (id in Bokeh.index) {\n",[m
[31m-       "              Bokeh.index[id].model.document.clear();\n",[m
[31m-       "              delete Bokeh.index[id];\n",[m
[31m-       "            }\n",[m
[31m-       "          }\n",[m
[31m-       "        }\n",[m
[31m-       "      });\n",[m
[31m-       "      // Destroy server and session\n",[m
[31m-       "      const cmd_destroy = \"import bokeh.io.notebook as ion; ion.destroy_server('\" + server_id + \"')\";\n",[m
[31m-       "      cell.notebook.kernel.execute(cmd_destroy);\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  /**\n",[m
[31m-       "   * Handle when a new output is added\n",[m
[31m-       "   */\n",[m
[31m-       "  function handleAddOutput(event, handle) {\n",[m
[31m-       "    const output_area = handle.output_area;\n",[m
[31m-       "    const output = handle.output;\n",[m
[31m-       "\n",[m
[31m-       "    // limit handleAddOutput to display_data with EXEC_MIME_TYPE content only\n",[m
[31m-       "    if ((output.output_type != \"display_data\") || (!Object.prototype.hasOwnProperty.call(output.data, EXEC_MIME_TYPE))) {\n",[m
[31m-       "      return\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    const toinsert = output_area.element.find(\".\" + CLASS_NAME.split(' ')[0]);\n",[m
[31m-       "\n",[m
[31m-       "    if (output.metadata[EXEC_MIME_TYPE][\"id\"] !== undefined) {\n",[m
[31m-       "      toinsert[toinsert.length - 1].firstChild.textContent = output.data[JS_MIME_TYPE];\n",[m
[31m-       "      // store reference to embed id on output_area\n",[m
[31m-       "      output_area._bokeh_element_id = output.metadata[EXEC_MIME_TYPE][\"id\"];\n",[m
[31m-       "    }\n",[m
[31m-       "    if (output.metadata[EXEC_MIME_TYPE][\"server_id\"] !== undefined) {\n",[m
[31m-       "      const bk_div = document.createElement(\"div\");\n",[m
[31m-       "      bk_div.innerHTML = output.data[HTML_MIME_TYPE];\n",[m
[31m-       "      const script_attrs = bk_div.children[0].attributes;\n",[m
[31m-       "      for (let i = 0; i < script_attrs.length; i++) {\n",[m
[31m-       "        toinsert[toinsert.length - 1].firstChild.setAttribute(script_attrs[i].name, script_attrs[i].value);\n",[m
[31m-       "        toinsert[toinsert.length - 1].firstChild.textContent = bk_div.children[0].textContent\n",[m
[31m-       "      }\n",[m
[31m-       "      // store reference to server id on output_area\n",[m
[31m-       "      output_area._bokeh_server_id = output.metadata[EXEC_MIME_TYPE][\"server_id\"];\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  function register_renderer(events, OutputArea) {\n",[m
[31m-       "\n",[m
[31m-       "    function append_mime(data, metadata, element) {\n",[m
[31m-       "      // create a DOM node to render to\n",[m
[31m-       "      const toinsert = this.create_output_subarea(\n",[m
[31m-       "        metadata,\n",[m
[31m-       "        CLASS_NAME,\n",[m
[31m-       "        EXEC_MIME_TYPE\n",[m
[31m-       "      );\n",[m
[31m-       "      this.keyboard_manager.register_events(toinsert);\n",[m
[31m-       "      // Render to node\n",[m
[31m-       "      const props = {data: data, metadata: metadata[EXEC_MIME_TYPE]};\n",[m
[31m-       "      render(props, toinsert[toinsert.length - 1]);\n",[m
[31m-       "      element.append(toinsert);\n",[m
[31m-       "      return toinsert\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    /* Handle when an output is cleared or removed */\n",[m
[31m-       "    events.on('clear_output.CodeCell', handleClearOutput);\n",[m
[31m-       "    events.on('delete.Cell', handleClearOutput);\n",[m
[31m-       "\n",[m
[31m-       "    /* Handle when a new output is added */\n",[m
[31m-       "    events.on('output_added.OutputArea', handleAddOutput);\n",[m
[31m-       "\n",[m
[31m-       "    /**\n",[m
[31m-       "     * Register the mime type and append_mime function with output_area\n",[m
[31m-       "     */\n",[m
[31m-       "    OutputArea.prototype.register_mime_type(EXEC_MIME_TYPE, append_mime, {\n",[m
[31m-       "      /* Is output safe? */\n",[m
[31m-       "      safe: true,\n",[m
[31m-       "      /* Index of renderer in `output_area.display_order` */\n",[m
[31m-       "      index: 0\n",[m
[31m-       "    });\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  // register the mime type if in Jupyter Notebook environment and previously unregistered\n",[m
[31m-       "  if (root.Jupyter !== undefined) {\n",[m
[31m-       "    const events = require('base/js/events');\n",[m
[31m-       "    const OutputArea = require('notebook/js/outputarea').OutputArea;\n",[m
[31m-       "\n",[m
[31m-       "    if (OutputArea.prototype.mime_types().indexOf(EXEC_MIME_TYPE) == -1) {\n",[m
[31m-       "      register_renderer(events, OutputArea);\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "  if (typeof (root._bokeh_timeout) === \"undefined\" || force === true) {\n",[m
[31m-       "    root._bokeh_timeout = Date.now() + 5000;\n",[m
[31m-       "    root._bokeh_failed_load = false;\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  const NB_LOAD_WARNING = {'data': {'text/html':\n",[m
[31m-       "     \"<div style='background-color: #fdd'>\\n\"+\n",[m
[31m-       "     \"<p>\\n\"+\n",[m
[31m-       "     \"BokehJS does not appear to have successfully loaded. If loading BokehJS from CDN, this \\n\"+\n",[m
[31m-       "     \"may be due to a slow or bad network connection. Possible fixes:\\n\"+\n",[m
[31m-       "     \"</p>\\n\"+\n",[m
[31m-       "     \"<ul>\\n\"+\n",[m
[31m-       "     \"<li>re-rerun `output_notebook()` to attempt to load from CDN again, or</li>\\n\"+\n",[m
[31m-       "     \"<li>use INLINE resources instead, as so:</li>\\n\"+\n",[m
[31m-       "     \"</ul>\\n\"+\n",[m
[31m-       "     \"<code>\\n\"+\n",[m
[31m-       "     \"from bokeh.resources import INLINE\\n\"+\n",[m
[31m-       "     \"output_notebook(resources=INLINE)\\n\"+\n",[m
[31m-       "     \"</code>\\n\"+\n",[m
[31m-       "     \"</div>\"}};\n",[m
[31m-       "\n",[m
[31m-       "  function display_loaded() {\n",[m
[31m-       "    const el = document.getElementById(\"p1001\");\n",[m
[31m-       "    if (el != null) {\n",[m
[31m-       "      el.textContent = \"BokehJS is loading...\";\n",[m
[31m-       "    }\n",[m
[31m-       "    if (root.Bokeh !== undefined) {\n",[m
[31m-       "      if (el != null) {\n",[m
[31m-       "        el.textContent = \"BokehJS \" + root.Bokeh.version + \" successfully loaded.\";\n",[m
[31m-       "      }\n",[m
[31m-       "    } else if (Date.now() < root._bokeh_timeout) {\n",[m
[31m-       "      setTimeout(display_loaded, 100)\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  function run_callbacks() {\n",[m
[31m-       "    try {\n",[m
[31m-       "      root._bokeh_onload_callbacks.forEach(function(callback) {\n",[m
[31m-       "        if (callback != null)\n",[m
[31m-       "          callback();\n",[m
[31m-       "      });\n",[m
[31m-       "    } finally {\n",[m
[31m-       "      delete root._bokeh_onload_callbacks\n",[m
[31m-       "    }\n",[m
[31m-       "    console.debug(\"Bokeh: all callbacks have finished\");\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  function load_libs(css_urls, js_urls, callback) {\n",[m
[31m-       "    if (css_urls == null) css_urls = [];\n",[m
[31m-       "    if (js_urls == null) js_urls = [];\n",[m
[31m-       "\n",[m
[31m-       "    root._bokeh_onload_callbacks.push(callback);\n",[m
[31m-       "    if (root._bokeh_is_loading > 0) {\n",[m
[31m-       "      console.debug(\"Bokeh: BokehJS is being loaded, scheduling callback at\", now());\n",[m
[31m-       "      return null;\n",[m
[31m-       "    }\n",[m
[31m-       "    if (js_urls == null || js_urls.length === 0) {\n",[m
[31m-       "      run_callbacks();\n",[m
[31m-       "      return null;\n",[m
[31m-       "    }\n",[m
[31m-       "    console.debug(\"Bokeh: BokehJS not loaded, scheduling load and callback at\", now());\n",[m
[31m-       "    root._bokeh_is_loading = css_urls.length + js_urls.length;\n",[m
[31m-       "\n",[m
[31m-       "    function on_load() {\n",[m
[31m-       "      root._bokeh_is_loading--;\n",[m
[31m-       "      if (root._bokeh_is_loading === 0) {\n",[m
[31m-       "        console.debug(\"Bokeh: all BokehJS libraries/stylesheets loaded\");\n",[m
[31m-       "        run_callbacks()\n",[m
[31m-       "      }\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    function on_error(url) {\n",[m
[31m-       "      console.error(\"failed to load \" + url);\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    for (let i = 0; i < css_urls.length; i++) {\n",[m
[31m-       "      const url = css_urls[i];\n",[m
[31m-       "      const element = document.createElement(\"link\");\n",[m
[31m-       "      element.onload = on_load;\n",[m
[31m-       "      element.onerror = on_error.bind(null, url);\n",[m
[31m-       "      element.rel = \"stylesheet\";\n",[m
[31m-       "      element.type = \"text/css\";\n",[m
[31m-       "      element.href = url;\n",[m
[31m-       "      console.debug(\"Bokeh: injecting link tag for BokehJS stylesheet: \", url);\n",[m
[31m-       "      document.body.appendChild(element);\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    for (let i = 0; i < js_urls.length; i++) {\n",[m
[31m-       "      const url = js_urls[i];\n",[m
[31m-       "      const element = document.createElement('script');\n",[m
[31m-       "      element.onload = on_load;\n",[m
[31m-       "      element.onerror = on_error.bind(null, url);\n",[m
[31m-       "      element.async = false;\n",[m
[31m-       "      element.src = url;\n",[m
[31m-       "      console.debug(\"Bokeh: injecting script tag for BokehJS library: \", url);\n",[m
[31m-       "      document.head.appendChild(element);\n",[m
[31m-       "    }\n",[m
[31m-       "  };\n",[m
[31m-       "\n",[m
[31m-       "  function inject_raw_css(css) {\n",[m
[31m-       "    const element = document.createElement(\"style\");\n",[m
[31m-       "    element.appendChild(document.createTextNode(css));\n",[m
[31m-       "    document.body.appendChild(element);\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  const js_urls = [\"https://cdn.bokeh.org/bokeh/release/bokeh-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-gl-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-widgets-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-tables-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-mathjax-3.0.3.min.js\"];\n",[m
[31m-       "  const css_urls = [];\n",[m
[31m-       "\n",[m
[31m-       "  const inline_js = [    function(Bokeh) {\n",[m
[31m-       "      Bokeh.set_log_level(\"info\");\n",[m
[31m-       "    },\n",[m
[31m-       "function(Bokeh) {\n",[m
[31m-       "    }\n",[m
[31m-       "  ];\n",[m
[31m-       "\n",[m
[31m-       "  function run_inline_js() {\n",[m
[31m-       "    if (root.Bokeh !== undefined || force === true) {\n",[m
[31m-       "          for (let i = 0; i < inline_js.length; i++) {\n",[m
[31m-       "      inline_js[i].call(root, root.Bokeh);\n",[m
[31m-       "    }\n",[m
[31m-       "if (force === true) {\n",[m
[31m-       "        display_loaded();\n",[m
[31m-       "      }} else if (Date.now() < root._bokeh_timeout) {\n",[m
[31m-       "      setTimeout(run_inline_js, 100);\n",[m
[31m-       "    } else if (!root._bokeh_failed_load) {\n",[m
[31m-       "      console.log(\"Bokeh: BokehJS failed to load within specified timeout.\");\n",[m
[31m-       "      root._bokeh_failed_load = true;\n",[m
[31m-       "    } else if (force !== true) {\n",[m
[31m-       "      const cell = $(document.getElementById(\"p1001\")).parents('.cell').data().cell;\n",[m
[31m-       "      cell.output_area.append_execute_result(NB_LOAD_WARNING)\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  if (root._bokeh_is_loading === 0) {\n",[m
[31m-       "    console.debug(\"Bokeh: BokehJS loaded, going straight to plotting\");\n",[m
[31m-       "    run_inline_js();\n",[m
[31m-       "  } else {\n",[m
[31m-       "    load_libs(css_urls, js_urls, function() {\n",[m
[31m-       "      console.debug(\"Bokeh: BokehJS plotting callback run at\", now());\n",[m
[31m-       "      run_inline_js();\n",[m
[31m-       "    });\n",[m
[31m-       "  }\n",[m
[31m-       "}(window));"[m
[31m-      ],[m
[31m-      "application/vnd.bokehjs_load.v0+json": "(function(root) {\n  function now() {\n    return new Date();\n  }\n\n  const force = true;\n\n  if (typeof root._bokeh_onload_callbacks === \"undefined\" || force === true) {\n    root._bokeh_onload_callbacks = [];\n    root._bokeh_is_loading = undefined;\n  }\n\n\n  if (typeof (root._bokeh_timeout) === \"undefined\" || force === true) {\n    root._bokeh_timeout = Date.now() + 5000;\n    root._bokeh_failed_load = false;\n  }\n\n  const NB_LOAD_WARNING = {'data': {'text/html':\n     \"<div style='background-color: #fdd'>\\n\"+\n     \"<p>\\n\"+\n     \"BokehJS does not appear to have successfully loaded. If loading BokehJS from CDN, this \\n\"+\n     \"may be due to a slow or bad network connection. Possible fixes:\\n\"+\n     \"</p>\\n\"+\n     \"<ul>\\n\"+\n     \"<li>re-rerun `output_notebook()` to attempt to load from CDN again, or</li>\\n\"+\n     \"<li>use INLINE resources instead, as so:</li>\\n\"+\n     \"</ul>\\n\"+\n     \"<code>\\n\"+\n     \"from bokeh.resources import INLINE\\n\"+\n     \"output_notebook(resources=INLINE)\\n\"+\n     \"</code>\\n\"+\n     \"</div>\"}};\n\n  function display_loaded() {\n    const el = document.getElementById(\"p1001\");\n    if (el != null) {\n      el.textContent = \"BokehJS is loading...\";\n    }\n    if (root.Bokeh !== undefined) {\n      if (el != null) {\n        el.textContent = \"BokehJS \" + root.Bokeh.version + \" successfully loaded.\";\n      }\n    } else if (Date.now() < root._bokeh_timeout) {\n      setTimeout(display_loaded, 100)\n    }\n  }\n\n  function run_callbacks() {\n    try {\n      root._bokeh_onload_callbacks.forEach(function(callback) {\n        if (callback != null)\n          callback();\n      });\n    } finally {\n      delete root._bokeh_onload_callbacks\n    }\n    console.debug(\"Bokeh: all callbacks have finished\");\n  }\n\n  function load_libs(css_urls, js_urls, callback) {\n    if (css_urls == null) css_urls = [];\n    if (js_urls == null) js_urls = [];\n\n    root._bokeh_onload_callbacks.push(callback);\n    if (root._bokeh_is_loading > 0) {\n      console.debug(\"Bokeh: BokehJS is being loaded, scheduling callback at\", now());\n      return null;\n    }\n    if (js_urls == null || js_urls.length === 0) {\n      run_callbacks();\n      return null;\n    }\n    console.debug(\"Bokeh: BokehJS not loaded, scheduling load and callback at\", now());\n    root._bokeh_is_loading = css_urls.length + js_urls.length;\n\n    function on_load() {\n      root._bokeh_is_loading--;\n      if (root._bokeh_is_loading === 0) {\n        console.debug(\"Bokeh: all BokehJS libraries/stylesheets loaded\");\n        run_callbacks()\n      }\n    }\n\n    function on_error(url) {\n      console.error(\"failed to load \" + url);\n    }\n\n    for (let i = 0; i < css_urls.length; i++) {\n      const url = css_urls[i];\n      const element = document.createElement(\"link\");\n      element.onload = on_load;\n      element.onerror = on_error.bind(null, url);\n      element.rel = \"stylesheet\";\n      element.type = \"text/css\";\n      element.href = url;\n      console.debug(\"Bokeh: injecting link tag for BokehJS stylesheet: \", url);\n      document.body.appendChild(element);\n    }\n\n    for (let i = 0; i < js_urls.length; i++) {\n      const url = js_urls[i];\n      const element = document.createElement('script');\n      element.onload = on_load;\n      element.onerror = on_error.bind(null, url);\n      element.async = false;\n      element.src = url;\n      console.debug(\"Bokeh: injecting script tag for BokehJS library: \", url);\n      document.head.appendChild(element);\n    }\n  };\n\n  function inject_raw_css(css) {\n    const element = document.createElement(\"style\");\n    element.appendChild(document.createTextNode(css));\n    document.body.appendChild(element);\n  }\n\n  const js_urls = [\"https://cdn.bokeh.org/bokeh/release/bokeh-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-gl-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-widgets-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-tables-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-mathjax-3.0.3.min.js\"];\n  const css_urls = [];\n\n  const inline_js = [    function(Bokeh) {\n      Bokeh.set_log_level(\"info\");\n    },\nfunction(Bokeh) {\n    }\n  ];\n\n  function run_inline_js() {\n    if (root.Bokeh !== undefined || force === true) {\n          for (let i = 0; i < inline_js.length; i++) {\n      inline_js[i].call(root, root.Bokeh);\n    }\nif (force === true) {\n        display_loaded();\n      }} else if (Date.now() < root._bokeh_timeout) {\n      setTimeout(run_inline_js, 100);\n    } else if (!root._bokeh_failed_load) {\n      console.log(\"Bokeh: BokehJS failed to load within specified timeout.\");\n      root._bokeh_failed_load = true;\n    } else if (force !== true) {\n      const cell = $(document.getElementById(\"p1001\")).parents('.cell').data().cell;\n      cell.output_area.append_execute_result(NB_LOAD_WARNING)\n    }\n  }\n\n  if (root._bokeh_is_loading === 0) {\n    console.debug(\"Bokeh: BokehJS loaded, going straight to plotting\");\n    run_inline_js();\n  } else {\n    load_libs(css_urls, js_urls, function() {\n      console.debug(\"Bokeh: BokehJS plotting callback run at\", now());\n      run_inline_js();\n    });\n  }\n}(window));"[m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    }[m
[31m-   ],[m
[31m-   "source": [[m
[31m-    "import bokeh.io as bo\n",[m
[31m-    "import bokeh.plotting as bp\n",[m
[31m-    "bokeh.io.output_notebook()"[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": null,[m
[31m-   "id": "c735b656-eb88-4cb6-883e-c44508832c4d",[m
[31m-   "metadata": {},[m
[31m-   "outputs": [],[m
[31m-   "source": [][m
[31m-  }[m
[31m- ],[m
[31m- "metadata": {[m
[31m-  "kernelspec": {[m
[31m-   "display_name": "Python 3 (ipykernel)",[m
[31m-   "language": "python",[m
[31m-   "name": "python3"[m
[31m-  },[m
[31m-  "language_info": {[m
[31m-   "codemirror_mode": {[m
[31m-    "name": "ipython",[m
[31m-    "version": 3[m
[31m-   },[m
[31m-   "file_extension": ".py",[m
[31m-   "mimetype": "text/x-python",[m
[31m-   "name": "python",[m
[31m-   "nbconvert_exporter": "python",[m
[31m-   "pygments_lexer": "ipython3",[m
[31m-   "version": "3.10.8"[m
[31m-  }[m
[31m- },[m
[31m- "nbformat": 4,[m
[31m- "nbformat_minor": 5[m
[31m-}[m
[1mdiff --git a/.ipynb_checkpoints/test-checkpoint.html b/.ipynb_checkpoints/test-checkpoint.html[m
[1mdeleted file mode 100644[m
[1mindex 495d98a..0000000[m
[1m--- a/.ipynb_checkpoints/test-checkpoint.html[m
[1m+++ /dev/null[m
[36m@@ -1,60 +0,0 @@[m
[31m-<!DOCTYPE html>[m
[31m-<html lang="en">[m
[31m-  <head>[m
[31m-    <meta charset="utf-8">[m
[31m-    <title>Bokeh Plot</title>[m
[31m-<style>[m
[31m-      html, body {[m
[31m-        box-sizing: border-box;[m
[31m-        height: 100%;[m
[31m-        margin: 0;[m
[31m-        padding: 0;[m
[31m-      }[m
[31m-    </style>[m
[31m-    <script type="text/javascript" src="https://cdn.bokeh.org/bokeh/release/bokeh-3.0.3.min.js"></script>[m
[31m-    <script type="text/javascript">[m
[31m-        Bokeh.set_log_level("info");[m
[31m-    </script>[m
[31m-  </head>[m
[31m-  <body>[m
[31m-    <div id="65b4c4c7-826a-447a-9fa0-814a13822c97" data-root-id="p1396" style="display: contents;"></div>[m
[31m-  [m
[31m-    <script type="application/json" id="p1722">[m
[31m-      {"d00eecf5-9e15-42e1-aeb0-a07afcd8fbbc":{"version":"3.0.3","title":"Bokeh Application","defs":[],"roots":[{"type":"object","name":"Figure","id":"p1396","attributes":{"x_range":{"type":"object","name":"DataRange1d","id":"p1398"},"y_range":{"type":"object","name":"DataRange1d","id":"p1397"},"x_scale":{"type":"object","name":"LinearScale","id":"p1410"},"y_scale":{"type":"object","name":"LinearScale","id":"p1412"},"title":{"type":"object","name":"Title","id":"p1399","attributes":{"text":"my first bokeh"}},"renderers":[{"type":"object","name":"GlyphRenderer","id":"p1449","attributes":{"data_source":{"type":"object","name":"ColumnDataSource","id":"p1443","attributes":{"selected":{"type":"object","name":"Selection","id":"p1444","attributes":{"indices":[],"line_indices":[]}},"selection_policy":{"type":"object","name":"UnionRenderers","id":"p1445"},"data":{"type":"map","entries":[["x",{"type":"ndarray","array":{"type":"bytes","data":"ZmZmZmZm9j9mZmZmZmb2P83MzMzMzPQ/AAAAAAAA+D9mZmZmZmb2PzMzMzMzM/s/ZmZmZmZm9j8AAAAAAAD4P2ZmZmZmZvY/AAAAAAAA+D8AAAAAAAD4P5qZmZmZmfk/ZmZmZmZm9j+amZmZmZnxPzMzMzMzM/M/AAAAAAAA+D/NzMzMzMz0P2ZmZmZmZvY/MzMzMzMz+z8AAAAAAAD4PzMzMzMzM/s/AAAAAAAA+D8AAAAAAADwPzMzMzMzM/s/ZmZmZmZm/j+amZmZmZn5P5qZmZmZmfk/AAAAAAAA+D9mZmZmZmb2P5qZmZmZmfk/mpmZmZmZ+T8AAAAAAAD4PwAAAAAAAPg/ZmZmZmZm9j8AAAAAAAD4PzMzMzMzM/M/zczMzMzM9D9mZmZmZmb2P83MzMzMzPQ/AAAAAAAA+D/NzMzMzMz0P83MzMzMzPQ/zczMzMzM9D+amZmZmZn5P2ZmZmZmZv4/ZmZmZmZm9j+amZmZmZn5P2ZmZmZmZvY/AAAAAAAA+D9mZmZmZmb2P83MzMzMzBJAAAAAAAAAEkCamZmZmZkTQAAAAAAAABBAZmZmZmZmEkAAAAAAAAASQM3MzMzMzBJAZmZmZmZmCkBmZmZmZmYSQDMzMzMzMw9AAAAAAAAADEDNzMzMzMwQQAAAAAAAABBAzczMzMzMEkDNzMzMzMwMQJqZmZmZmRFAAAAAAAAAEkBmZmZmZmYQQAAAAAAAABJAMzMzMzMzD0AzMzMzMzMTQAAAAAAAABBAmpmZmZmZE0DNzMzMzMwSQDMzMzMzMxFAmpmZmZmZEUAzMzMzMzMTQAAAAAAAABRAAAAAAAAAEkAAAAAAAAAMQGZmZmZmZg5AmpmZmZmZDUAzMzMzMzMPQGZmZmZmZhRAAAAAAAAAEkAAAAAAAAASQM3MzMzMzBJAmpmZmZmZEUBmZmZmZmYQQAAAAAAAABBAmpmZmZmZEUBmZmZmZmYSQAAAAAAAABBAZmZmZmZmCkDNzMzMzMwQQM3MzMzMzBBAzczMzMzMEEAzMzMzMzMRQAAAAAAAAAhAZmZmZmZmEEAAAAAAAAAYQGZmZmZmZhRAmpmZmZmZF0BmZmZmZmYWQDMzMzMzMxdAZmZmZmZmGkAAAAAAAAASQDMzMzMzMxlAMzMzMzMzF0BmZmZmZmYYQGZmZmZmZhRAMzMzMzMzFUAAAAAAAAAWQAAAAAAAABRAZmZmZmZmFEAzMzMzMzMVQAAAAAAAABZAzczMzMzMGkCamZmZmZkbQAAAAAAAABRAzczMzMzMFkCamZmZmZkTQM3MzMzMzBpAmpmZmZmZE0DNzMzMzMwWQAAAAAAAABhAMzMzMzMzE0CamZmZmZkTQGZmZmZmZhZAMzMzMzMzF0BmZmZmZmYYQJqZmZmZmRlAZmZmZmZmFkBmZmZmZmYUQGZmZmZmZhZAZmZmZmZmGEBmZmZmZmYWQAAAAAAAABZAMzMzMzMzE0CamZmZmZkVQGZmZmZmZhZAZmZmZmZmFEBmZmZmZmYUQJqZmZmZmRdAzczMzMzMFkDNzMzMzMwUQAAAAAAAABRAzczMzMzMFECamZmZmZkVQGZmZmZmZhRA"},"shape":[150],"dtype":"float64","order":"little"}],["y",{"type":"ndarray","array":{"type":"bytes","data":"mpmZmZmZyT+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZnJP5qZmZmZmdk/MzMzMzMz0z+amZmZmZnJP5qZmZmZmck/mpmZmZmZuT+amZmZmZnJP5qZmZmZmck/mpmZmZmZuT+amZmZmZm5P5qZmZmZmck/mpmZmZmZ2T+amZmZmZnZPzMzMzMzM9M/MzMzMzMz0z8zMzMzMzPTP5qZmZmZmck/mpmZmZmZ2T+amZmZmZnJPwAAAAAAAOA/mpmZmZmZyT+amZmZmZnJP5qZmZmZmdk/mpmZmZmZyT+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZnZP5qZmZmZmbk/mpmZmZmZyT+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZm5P5qZmZmZmck/mpmZmZmZyT8zMzMzMzPTPzMzMzMzM9M/mpmZmZmZyT8zMzMzMzPjP5qZmZmZmdk/MzMzMzMz0z+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZnJP2ZmZmZmZvY/AAAAAAAA+D8AAAAAAAD4P83MzMzMzPQ/AAAAAAAA+D/NzMzMzMz0P5qZmZmZmfk/AAAAAAAA8D/NzMzMzMz0P2ZmZmZmZvY/AAAAAAAA8D8AAAAAAAD4PwAAAAAAAPA/ZmZmZmZm9j/NzMzMzMz0P2ZmZmZmZvY/AAAAAAAA+D8AAAAAAADwPwAAAAAAAPg/mpmZmZmZ8T/NzMzMzMz8P83MzMzMzPQ/AAAAAAAA+D8zMzMzMzPzP83MzMzMzPQ/ZmZmZmZm9j9mZmZmZmb2PzMzMzMzM/s/AAAAAAAA+D8AAAAAAADwP5qZmZmZmfE/AAAAAAAA8D8zMzMzMzPzP5qZmZmZmfk/AAAAAAAA+D+amZmZmZn5PwAAAAAAAPg/zczMzMzM9D/NzMzMzMz0P83MzMzMzPQ/MzMzMzMz8z9mZmZmZmb2PzMzMzMzM/M/AAAAAAAA8D/NzMzMzMz0PzMzMzMzM/M/zczMzMzM9D/NzMzMzMz0P5qZmZmZmfE/zczMzMzM9D8AAAAAAAAEQGZmZmZmZv4/zczMzMzMAEDNzMzMzMz8P5qZmZmZmQFAzczMzMzMAEAzMzMzMzP7P83MzMzMzPw/zczMzMzM/D8AAAAAAAAEQAAAAAAAAABAZmZmZmZm/j/NzMzMzMwAQAAAAAAAAABAMzMzMzMzA0BmZmZmZmYCQM3MzMzMzPw/mpmZmZmZAUBmZmZmZmYCQAAAAAAAAPg/ZmZmZmZmAkAAAAAAAAAAQAAAAAAAAABAzczMzMzM/D/NzMzMzMwAQM3MzMzMzPw/zczMzMzM/D/NzMzMzMz8P83MzMzMzABAmpmZmZmZ+T9mZmZmZmb+PwAAAAAAAABAmpmZmZmZAUAAAAAAAAD4P2ZmZmZmZvY/ZmZmZmZmAkAzMzMzMzMDQM3MzMzMzPw/zczMzMzM/D/NzMzMzMwAQDMzMzMzMwNAZmZmZmZmAkBmZmZmZmb+P2ZmZmZmZgJAAAAAAAAABEBmZmZmZmYCQGZmZmZmZv4/AAAAAAAAAEBmZmZmZmYCQM3MzMzMzPw/"},"shape":[150],"dtype":"float64","order":"little"}]]}}},"view":{"type":"object","name":"CDSView","id":"p1450","attributes":{"filter":{"type":"object","name":"AllIndices","id":"p1451"}}},"glyph":{"type":"object","name":"Line","id":"p1446","attributes":{"x":{"type":"field","field":"x"},"y":{"type":"field","field":"y"},"line_color":"#1f77b4"}},"nonselection_glyph":{"type":"object","name":"Line","id":"p1447","attributes":{"x":{"type":"field","field":"x"},"y":{"type":"field","field":"y"},"line_color":"#1f77b4","line_alpha":0.1}},"muted_glyph":{"type":"object","name":"Line","id":"p1448","attributes":{"x":{"type":"field","field":"x"},"y":{"type":"field","field":"y"},"line_color":"#1f77b4","line_alpha":0.2}}}}],"toolbar":{"type":"object","name":"Toolbar","id":"p1401","attributes":{"tools":[{"type":"object","name":"PanTool","id":"p1428"},{"type":"object","name":"WheelZoomTool","id":"p1429"},{"type":"object","name":"BoxZoomTool","id":"p1430","attributes":{"overlay":{"type":"object","name":"BoxAnnotation","id":"p1431","attributes":{"syncable":false,"level":"overlay","visible":false,"left_units":"canvas","right_units":"canvas","bottom_units":"canvas","top_units":"canvas","line_color":"black","line_alpha":1.0,"line_width":2,"line_dash":[4,4],"fill_color":"lightgrey","fill_alpha":0.5}}}},{"type":"object","name":"SaveTool","id":"p1432"},{"type":"object","name":"ResetTool","id":"p1433"},{"type":"object","name":"HelpTool","id":"p1434"}]}},"left":[{"type":"object","name":"LinearAxis","id":"p1421","attributes":{"ticker":{"type":"object","name":"BasicTicker","id":"p1422","attributes":{"mantissas":[1,2,5]}},"formatter":{"type":"object","name":"BasicTickFormatter","id":"p1424"},"axis_label":"petal width","major_label_policy":{"type":"object","name":"AllLabels","id":"p1423"}}}],"below":[{"type":"object","name":"LinearAxis","id":"p1414","attributes":{"ticker":{"type":"object","name":"BasicTicker","id":"p1415","attributes":{"mantissas":[1,2,5]}},"formatter":{"type":"object","name":"BasicTickFormatter","id":"p1417"},"axis_label":"petal length","major_label_policy":{"type":"object","name":"AllLabels","id":"p1416"}}}],"center":[{"type":"object","name":"Grid","id":"p1420","attributes":{"axis":{"id":"p1414"}}},{"type":"object","name":"Grid","id":"p1427","attributes":{"dimension":1,"axis":{"id":"p1421"}}}]}}]}}[m
[31m-    </script>[m
[31m-    <script type="text/javascript">[m
[31m-      (function() {[m
[31m-        const fn = function() {[m
[31m-          Bokeh.safely(function() {[m
[31m-            (function(root) {[m
[31m-              function embed_document(root) {[m
[31m-              const docs_json = document.getElementById('p1722').textContent;[m
[31m-              const render_items = [{"docid":"d00eecf5-9e15-42e1-aeb0-a07afcd8fbbc","roots":{"p1396":"65b4c4c7-826a-447a-9fa0-814a13822c97"},"root_ids":["p1396"]}];[m
[31m-              root.Bokeh.embed.embed_items(docs_json, render_items);[m
[31m-              }[m
[31m-              if (root.Bokeh !== undefined) {[m
[31m-                embed_document(root);[m
[31m-              } else {[m
[31m-                let attempts = 0;[m
[31m-                const timer = setInterval(function(root) {[m
[31m-                  if (root.Bokeh !== undefined) {[m
[31m-                    clearInterval(timer);[m
[31m-                    embed_document(root);[m
[31m-                  } else {[m
[31m-                    attempts++;[m
[31m-                    if (attempts > 100) {[m
[31m-                      clearInterval(timer);[m
[31m-                      console.log("Bokeh: ERROR: Unable to run BokehJS code because BokehJS library is missing");[m
[31m-                    }[m
[31m-                  }[m
[31m-                }, 10, root)[m
[31m-              }[m
[31m-            })(window);[m
[31m-          });[m
[31m-        };[m
[31m-        if (document.readyState != "loading") fn();[m
[31m-        else document.addEventListener("DOMContentLoaded", fn);[m
[31m-      })();[m
[31m-    </script>[m
[31m-  </body>[m
[31m-</html>[m
\ No newline at end of file[m
[1mdiff --git a/4MarchAssignment.ipynb b/4MarchAssignment.ipynb[m
[1mindex 7dfbebf..8b0a9c7 100644[m
[1m--- a/4MarchAssignment.ipynb[m
[1m+++ b/4MarchAssignment.ipynb[m
[36m@@ -1,375 +1,353 @@[m
 {[m
[31m- "cells": [[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": 1,[m
[31m-   "metadata": {[m
[31m-    "id": "hZO0tsLCYdxv"[m
[31m-   },[m
[31m-   "outputs": [[m
[31m-    {[m
[31m-     "ename": "ModuleNotFoundError",[m
[31m-     "evalue": "No module named 'plotly'",[m
[31m-     "output_type": "error",[m
[31m-     "traceback": [[m
[31m-      "\u001b[0;31m---------------------------------------------------------------------------\u001b[0m",[m
[31m-      "\u001b[0;31mModuleNotFoundError\u001b[0m                       Traceback (most recent call last)",[m
[31m-      "Cell \u001b[0;32mIn[1], line 1\u001b[0m\n\u001b[0;32m----> 1\u001b[0m \u001b[38;5;28;01mimport\u001b[39;00m \u001b[38;5;21;01mplotly\u001b[39;00m\u001b[38;5;21;01m.\u001b[39;00m\u001b[38;5;21;01mgraph_objects\u001b[39;00m \u001b[38;5;28;01mas\u001b[39;00m \u001b[38;5;21;01mgo\u001b[39;00m\n",[m
[31m-      "\u001b[0;31mModuleNotFoundError\u001b[0m: No module named 'plotly'"[m
[31m-     ][m
[32m+[m[32m  "nbformat": 4,[m
[32m+[m[32m  "nbformat_minor": 0,[m
[32m+[m[32m  "metadata": {[m
[32m+[m[32m    "colab": {[m
[32m+[m[32m      "provenance": [][m
[32m+[m[32m    },[m
[32m+[m[32m    "kernelspec": {[m
[32m+[m[32m      "name": "python3",[m
[32m+[m[32m      "display_name": "Python 3"[m
[32m+[m[32m    },[m
[32m+[m[32m    "language_info": {[m
[32m+[m[32m      "name": "python"[m
     }[m
[31m-   ],[m
[31m-   "source": [[m
[31m-    "import plotly.graph_objects as go\n"[m
[31m-   ][m
   },[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": 3,[m
[31m-   "metadata": {[m
[31m-    "colab": {[m
[31m-     "base_uri": "https://localhost:8080/",[m
[31m-     "height": 542[m
[32m+[m[32m  "cells": [[m
[32m+[m[32m    {[m
[32m+[m[32m      "cell_type": "code",[m
[32m+[m[32m      "execution_count": 1,[m
[32m+[m[32m      "metadata": {[m
[32m+[m[32m        "id": "hZO0tsLCYdxv"[m
[32m+[m[32m      },[m
[32m+[m[32m      "outputs": [],[m
[32m+[m[32m      "source": [[m
[32m+[m[32m        "import plotly.graph_objects as go\n"[m
[32m+[m[32m      ][m
     },[m
[31m-    "id": "7TatYnSd52DF",[m
[31m-    "outputId": "eb264b72-d49e-4da0-9a8f-4fd78c843bb5"[m
[31m-   },[m
[31m-   "outputs": [[m
     {[m
[31m-     "data": {[m
[31m-      "text/html": [[m
[31m-       "<html>\n",[m
[31m-       "<head><meta charset=\"utf-8\" /></head>\n",[m
[31m-       "<body>\n",[m
[31m-       "    <div>            <script src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG\"></script><script type=\"text/javascript\">if (window.MathJax && window.MathJax.Hub && window.MathJax.Hub.Config) {window.MathJax.Hub.Config({SVG: {font: \"STIX-Web\"}});}</script>                <script type=\"text/javascript\">window.PlotlyConfig = {MathJaxConfig: 'local'};</script>\n",[m
[31m-       "        <script src=\"https://cdn.plot.ly/plotly-2.18.2.min.js\"></script>                <div id=\"02688a51-39fd-4e9b-a447-85759cdf4b86\" class=\"plotly-graph-div\" style=\"height:525px; width:100%;\"></div>            <script type=\"text/javascript\">                                    window.PLOTLYENV=window.PLOTLYENV || {};                                    if (document.getElementById(\"02688a51-39fd-4e9b-a447-85759cdf4b86\")) {                    Plotly.newPlot(                        \"02688a51-39fd-4e9b-a447-85759cdf4b86\",                        [{\"x\":[22.0,38.0,26.0,35.0,35.0,null,54.0,2.0,27.0,14.0,4.0,58.0,20.0,39.0,14.0,55.0,2.0,null,31.0,null,35.0,34.0,15.0,28.0,8.0,38.0,null,19.0,null,null,40.0,null,null,66.0,28.0,42.0,null,21.0,18.0,14.0,40.0,27.0,null,3.0,19.0,null,null,null,null,18.0,7.0,21.0,49.0,29.0,65.0,null,21.0,28.5,5.0,11.0,22.0,38.0,45.0,4.0,null,null,29.0,19.0,17.0,26.0,32.0,16.0,21.0,26.0,32.0,25.0,null,null,0.83,30.0,22.0,29.0,null,28.0,17.0,33.0,16.0,null,23.0,24.0,29.0,20.0,46.0,26.0,59.0,null,71.0,23.0,34.0,34.0,28.0,null,21.0,33.0,37.0,28.0,21.0,null,38.0,null,47.0,14.5,22.0,20.0,17.0,21.0,70.5,29.0,24.0,2.0,21.0,null,32.5,32.5,54.0,12.0,null,24.0,null,45.0,33.0,20.0,47.0,29.0,25.0,23.0,19.0,37.0,16.0,24.0,null,22.0,24.0,19.0,18.0,19.0,27.0,9.0,36.5,42.0,51.0,22.0,55.5,40.5,null,51.0,16.0,30.0,null,null,44.0,40.0,26.0,17.0,1.0,9.0,null,45.0,null,28.0,61.0,4.0,1.0,21.0,56.0,18.0,null,50.0,30.0,36.0,null,null,9.0,1.0,4.0,null,null,45.0,40.0,36.0,32.0,19.0,19.0,3.0,44.0,58.0,null,42.0,null,24.0,28.0,null,34.0,45.5,18.0,2.0,32.0,26.0,16.0,40.0,24.0,35.0,22.0,30.0,null,31.0,27.0,42.0,32.0,30.0,16.0,27.0,51.0,null,38.0,22.0,19.0,20.5,18.0,null,35.0,29.0,59.0,5.0,24.0,null,44.0,8.0,19.0,33.0,null,null,29.0,22.0,30.0,44.0,25.0,24.0,37.0,54.0,null,29.0,62.0,30.0,41.0,29.0,null,30.0,35.0,50.0,null,3.0,52.0,40.0,null,36.0,16.0,25.0,58.0,35.0,null,25.0,41.0,37.0,null,63.0,45.0,null,7.0,35.0,65.0,28.0,16.0,19.0,null,33.0,30.0,22.0,42.0,22.0,26.0,19.0,36.0,24.0,24.0,null,23.5,2.0,null,50.0,null,null,19.0,null,null,0.92,null,17.0,30.0,30.0,24.0,18.0,26.0,28.0,43.0,26.0,24.0,54.0,31.0,40.0,22.0,27.0,30.0,22.0,null,36.0,61.0,36.0,31.0,16.0,null,45.5,38.0,16.0,null,null,29.0,41.0,45.0,45.0,2.0,24.0,28.0,25.0,36.0,24.0,40.0,null,3.0,42.0,23.0,null,15.0,25.0,null,28.0,22.0,38.0,null,null,40.0,29.0,45.0,35.0,null,30.0,60.0,null,null,24.0,25.0,18.0,19.0,22.0,3.0,null,22.0,27.0,20.0,19.0,42.0,1.0,32.0,35.0,null,18.0,1.0,36.0,null,17.0,36.0,21.0,28.0,23.0,24.0,22.0,31.0,46.0,23.0,28.0,39.0,26.0,21.0,28.0,20.0,34.0,51.0,3.0,21.0,null,null,null,33.0,null,44.0,null,34.0,18.0,30.0,10.0,null,21.0,29.0,28.0,18.0,null,28.0,19.0,null,32.0,28.0,null,42.0,17.0,50.0,14.0,21.0,24.0,64.0,31.0,45.0,20.0,25.0,28.0,null,4.0,13.0,34.0,5.0,52.0,36.0,null,30.0,49.0,null,29.0,65.0,null,50.0,null,48.0,34.0,47.0,48.0,null,38.0,null,56.0,null,0.75,null,38.0,33.0,23.0,22.0,null,34.0,29.0,22.0,2.0,9.0,null,50.0,63.0,25.0,null,35.0,58.0,30.0,9.0,null,21.0,55.0,71.0,21.0,null,54.0,null,25.0,24.0,17.0,21.0,null,37.0,16.0,18.0,33.0,null,28.0,26.0,29.0,null,36.0,54.0,24.0,47.0,34.0,null,36.0,32.0,30.0,22.0,null,44.0,null,40.5,50.0,null,39.0,23.0,2.0,null,17.0,null,30.0,7.0,45.0,30.0,null,22.0,36.0,9.0,11.0,32.0,50.0,64.0,19.0,null,33.0,8.0,17.0,27.0,null,22.0,22.0,62.0,48.0,null,39.0,36.0,null,40.0,28.0,null,null,24.0,19.0,29.0,null,32.0,62.0,53.0,36.0,null,16.0,19.0,34.0,39.0,null,32.0,25.0,39.0,54.0,36.0,null,18.0,47.0,60.0,22.0,null,35.0,52.0,47.0,null,37.0,36.0,null,49.0,null,49.0,24.0,null,null,44.0,35.0,36.0,30.0,27.0,22.0,40.0,39.0,null,null,null,35.0,24.0,34.0,26.0,4.0,26.0,27.0,42.0,20.0,21.0,21.0,61.0,57.0,21.0,26.0,null,80.0,51.0,32.0,null,9.0,28.0,32.0,31.0,41.0,null,20.0,24.0,2.0,null,0.75,48.0,19.0,56.0,null,23.0,null,18.0,21.0,null,18.0,24.0,null,32.0,23.0,58.0,50.0,40.0,47.0,36.0,20.0,32.0,25.0,null,43.0,null,40.0,31.0,70.0,31.0,null,18.0,24.5,18.0,43.0,36.0,null,27.0,20.0,14.0,60.0,25.0,14.0,19.0,18.0,15.0,31.0,4.0,null,25.0,60.0,52.0,44.0,null,49.0,42.0,18.0,35.0,18.0,25.0,26.0,39.0,45.0,42.0,22.0,null,24.0,null,48.0,29.0,52.0,19.0,38.0,27.0,null,33.0,6.0,17.0,34.0,50.0,27.0,20.0,30.0,null,25.0,25.0,29.0,11.0,null,23.0,23.0,28.5,48.0,35.0,null,null,null,36.0,21.0,24.0,31.0,70.0,16.0,30.0,19.0,31.0,4.0,6.0,33.0,23.0,48.0,0.67,28.0,18.0,34.0,33.0,null,41.0,20.0,36.0,16.0,51.0,null,30.5,null,32.0,24.0,48.0,57.0,null,54.0,18.0,null,5.0,null,43.0,13.0,17.0,29.0,null,25.0,25.0,18.0,8.0,1.0,46.0,null,16.0,null,null,25.0,39.0,49.0,31.0,30.0,30.0,34.0,31.0,11.0,0.42,27.0,31.0,39.0,18.0,39.0,33.0,26.0,39.0,35.0,6.0,30.5,null,23.0,31.0,43.0,10.0,52.0,27.0,38.0,27.0,2.0,null,null,1.0,null,62.0,15.0,0.83,null,23.0,18.0,39.0,21.0,null,32.0,null,20.0,16.0,30.0,34.5,17.0,42.0,null,35.0,28.0,null,4.0,74.0,9.0,16.0,44.0,18.0,45.0,51.0,24.0,null,41.0,21.0,48.0,null,24.0,42.0,27.0,31.0,null,4.0,26.0,47.0,33.0,47.0,28.0,15.0,20.0,19.0,null,56.0,25.0,33.0,22.0,28.0,25.0,39.0,27.0,19.0,null,26.0,32.0],\"y\":[7.25,71.2833,7.925,53.1,8.05,8.4583,51.8625,21.075,11.1333,30.0708,16.7,26.55,8.05,31.275,7.8542,16.0,29.125,13.0,18.0,7.225,26.0,13.0,8.0292,35.5,21.075,31.3875,7.225,263.0,7.8792,7.8958,27.7208,146.5208,7.75,10.5,82.1708,52.0,7.2292,8.05,18.0,11.2417,9.475,21.0,7.8958,41.5792,7.8792,8.05,15.5,7.75,21.6792,17.8,39.6875,7.8,76.7292,26.0,61.9792,35.5,10.5,7.2292,27.75,46.9,7.2292,80.0,83.475,27.9,27.7208,15.2458,10.5,8.1583,7.925,8.6625,10.5,46.9,73.5,14.4542,56.4958,7.65,7.8958,8.05,29.0,12.475,9.0,9.5,7.7875,47.1,10.5,15.85,34.375,8.05,263.0,8.05,8.05,7.8542,61.175,20.575,7.25,8.05,34.6542,63.3583,23.0,26.0,7.8958,7.8958,77.2875,8.6542,7.925,7.8958,7.65,7.775,7.8958,24.15,52.0,14.4542,8.05,9.825,14.4583,7.925,7.75,21.0,247.5208,31.275,73.5,8.05,30.0708,13.0,77.2875,11.2417,7.75,7.1417,22.3583,6.975,7.8958,7.05,14.5,26.0,13.0,15.0458,26.2833,53.1,9.2167,79.2,15.2458,7.75,15.85,6.75,11.5,36.75,7.7958,34.375,26.0,13.0,12.525,66.6,8.05,14.5,7.3125,61.3792,7.7333,8.05,8.6625,69.55,16.1,15.75,7.775,8.6625,39.6875,20.525,55.0,27.9,25.925,56.4958,33.5,29.125,11.1333,7.925,30.6958,7.8542,25.4667,28.7125,13.0,0.0,69.55,15.05,31.3875,39.0,22.025,50.0,15.5,26.55,15.5,7.8958,13.0,13.0,7.8542,26.0,27.7208,146.5208,7.75,8.4042,7.75,13.0,9.5,69.55,6.4958,7.225,8.05,10.4625,15.85,18.7875,7.75,31.0,7.05,21.0,7.25,13.0,7.75,113.275,7.925,27.0,76.2917,10.5,8.05,13.0,8.05,7.8958,90.0,9.35,10.5,7.25,13.0,25.4667,83.475,7.775,13.5,31.3875,10.5,7.55,26.0,26.25,10.5,12.275,14.4542,15.5,10.5,7.125,7.225,90.0,7.775,14.5,52.5542,26.0,7.25,10.4625,26.55,16.1,20.2125,15.2458,79.2,86.5,512.3292,26.0,7.75,31.3875,79.65,0.0,7.75,10.5,39.6875,7.775,153.4625,135.6333,31.0,0.0,19.5,29.7,7.75,77.9583,7.75,0.0,29.125,20.25,7.75,7.8542,9.5,8.05,26.0,8.6625,9.5,7.8958,13.0,7.75,78.85,91.0792,12.875,8.85,7.8958,27.7208,7.2292,151.55,30.5,247.5208,7.75,23.25,0.0,12.35,8.05,151.55,110.8833,108.9,24.0,56.9292,83.1583,262.375,26.0,7.8958,26.25,7.8542,26.0,14.0,164.8667,134.5,7.25,7.8958,12.35,29.0,69.55,135.6333,6.2375,13.0,20.525,57.9792,23.25,28.5,153.4625,18.0,133.65,7.8958,66.6,134.5,8.05,35.5,26.0,263.0,13.0,13.0,13.0,13.0,13.0,16.1,15.9,8.6625,9.225,35.0,7.2292,17.8,7.225,9.5,55.0,13.0,7.8792,7.8792,27.9,27.7208,14.4542,7.05,15.5,7.25,75.25,7.2292,7.75,69.3,55.4417,6.4958,8.05,135.6333,21.075,82.1708,7.25,211.5,4.0125,7.775,227.525,15.7417,7.925,52.0,7.8958,73.5,46.9,13.0,7.7292,12.0,120.0,7.7958,7.925,113.275,16.7,7.7958,7.8542,26.0,10.5,12.65,7.925,8.05,9.825,15.85,8.6625,21.0,7.75,18.75,7.775,25.4667,7.8958,6.8583,90.0,0.0,7.925,8.05,32.5,13.0,13.0,24.15,7.8958,7.7333,7.875,14.4,20.2125,7.25,26.0,26.0,7.75,8.05,26.55,16.1,26.0,7.125,55.9,120.0,34.375,18.75,263.0,10.5,26.25,9.5,7.775,13.0,8.1125,81.8583,19.5,26.55,19.2583,30.5,27.75,19.9667,27.75,89.1042,8.05,7.8958,26.55,51.8625,10.5,7.75,26.55,8.05,38.5,13.0,8.05,7.05,0.0,26.55,7.725,19.2583,7.25,8.6625,27.75,13.7917,9.8375,52.0,21.0,7.0458,7.5208,12.2875,46.9,0.0,8.05,9.5875,91.0792,25.4667,90.0,29.7,8.05,15.9,19.9667,7.25,30.5,49.5042,8.05,14.4583,78.2667,15.1,151.55,7.7958,8.6625,7.75,7.6292,9.5875,86.5,108.9,26.0,26.55,22.525,56.4958,7.75,8.05,26.2875,59.4,7.4958,34.0208,10.5,24.15,26.0,7.8958,93.5,7.8958,7.225,57.9792,7.2292,7.75,10.5,221.7792,7.925,11.5,26.0,7.2292,7.2292,22.3583,8.6625,26.25,26.55,106.425,14.5,49.5,71.0,31.275,31.275,26.0,106.425,26.0,26.0,13.8625,20.525,36.75,110.8833,26.0,7.8292,7.225,7.775,26.55,39.6,227.525,79.65,17.4,7.75,7.8958,13.5,8.05,8.05,24.15,7.8958,21.075,7.2292,7.8542,10.5,51.4792,26.3875,7.75,8.05,14.5,13.0,55.9,14.4583,7.925,30.0,110.8833,26.0,40.125,8.7125,79.65,15.0,79.2,8.05,8.05,7.125,78.2667,7.25,7.75,26.0,24.15,33.0,0.0,7.225,56.9292,27.0,7.8958,42.4,8.05,26.55,15.55,7.8958,30.5,41.5792,153.4625,31.275,7.05,15.5,7.75,8.05,65.0,14.4,16.1,39.0,10.5,14.4542,52.5542,15.7417,7.8542,16.1,32.3208,12.35,77.9583,7.8958,7.7333,30.0,7.0542,30.5,0.0,27.9,13.0,7.925,26.25,39.6875,16.1,7.8542,69.3,27.9,56.4958,19.2583,76.7292,7.8958,35.5,7.55,7.55,7.8958,23.0,8.4333,7.8292,6.75,73.5,7.8958,15.5,13.0,113.275,133.65,7.225,25.5875,7.4958,7.925,73.5,13.0,7.775,8.05,52.0,39.0,52.0,10.5,13.0,0.0,7.775,8.05,9.8417,46.9,512.3292,8.1375,76.7292,9.225,46.9,39.0,41.5792,39.6875,10.1708,7.7958,211.3375,57.0,13.4167,56.4958,7.225,26.55,13.5,8.05,7.7333,110.8833,7.65,227.525,26.2875,14.4542,7.7417,7.8542,26.0,13.5,26.2875,151.55,15.2458,49.5042,26.55,52.0,9.4833,13.0,7.65,227.525,10.5,15.5,7.775,33.0,7.0542,13.0,13.0,53.1,8.6625,21.0,7.7375,26.0,7.925,211.3375,18.7875,0.0,13.0,13.0,16.1,34.375,512.3292,7.8958,7.8958,30.0,78.85,262.375,16.1,7.925,71.0,20.25,13.0,53.1,7.75,23.0,12.475,9.5,7.8958,65.0,14.5,7.7958,11.5,8.05,86.5,14.5,7.125,7.2292,120.0,7.775,77.9583,39.6,7.75,24.15,8.3625,9.5,7.8542,10.5,7.225,23.0,7.75,7.75,12.475,7.7375,211.3375,7.2292,57.0,30.0,23.45,7.05,7.25,7.4958,29.125,20.575,79.2,7.75,26.0,69.55,30.6958,7.8958,13.0,25.9292,8.6833,7.2292,24.15,13.0,26.25,120.0,8.5167,6.975,7.775,0.0,7.775,13.0,53.1,7.8875,24.15,10.5,31.275,8.05,0.0,7.925,37.0042,6.45,27.9,93.5,8.6625,0.0,12.475,39.6875,6.95,56.4958,37.0042,7.75,80.0,14.4542,18.75,7.2292,7.8542,8.3,83.1583,8.6625,8.05,56.4958,29.7,7.925,10.5,31.0,6.4375,8.6625,7.55,69.55,7.8958,33.0,89.1042,31.275,7.775,15.2458,39.4,26.0,9.35,164.8667,26.55,19.2583,7.2292,14.1083,11.5,25.9292,69.55,13.0,13.0,13.8583,50.4958,9.5,11.1333,7.8958,52.5542,5.0,9.0,24.0,7.225,9.8458,7.8958,7.8958,83.1583,26.0,7.8958,10.5167,10.5,7.05,29.125,13.0,30.0,23.45,30.0,7.75],\"type\":\"scatter\"}],                        {\"template\":{\"data\":{\"histogram2dcontour\":[{\"type\":\"histogram2dcontour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"choropleth\":[{\"type\":\"choropleth\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"histogram2d\":[{\"type\":\"histogram2d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmap\":[{\"type\":\"heatmap\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmapgl\":[{\"type\":\"heatmapgl\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"contourcarpet\":[{\"type\":\"contourcarpet\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"contour\":[{\"type\":\"contour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"surface\":[{\"type\":\"surface\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"mesh3d\":[{\"type\":\"mesh3d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"scatter\":[{\"fillpattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2},\"type\":\"scatter\"}],\"parcoords\":[{\"type\":\"parcoords\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolargl\":[{\"type\":\"scatterpolargl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"bar\":[{\"error_x\":{\"color\":\"#2a3f5f\"},\"error_y\":{\"color\":\"#2a3f5f\"},\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"bar\"}],\"scattergeo\":[{\"type\":\"scattergeo\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolar\":[{\"type\":\"scatterpolar\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"histogram\":[{\"marker\":{\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"histogram\"}],\"scattergl\":[{\"type\":\"scattergl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatter3d\":[{\"type\":\"scatter3d\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattermapbox\":[{\"type\":\"scattermapbox\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterternary\":[{\"type\":\"scatterternary\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattercarpet\":[{\"type\":\"scattercarpet\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"carpet\":[{\"aaxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"baxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"type\":\"carpet\"}],\"table\":[{\"cells\":{\"fill\":{\"color\":\"#EBF0F8\"},\"line\":{\"color\":\"white\"}},\"header\":{\"fill\":{\"color\":\"#C8D4E3\"},\"line\":{\"color\":\"white\"}},\"type\":\"table\"}],\"barpolar\":[{\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"barpolar\"}],\"pie\":[{\"automargin\":true,\"type\":\"pie\"}]},\"layout\":{\"autotypenumbers\":\"strict\",\"colorway\":[\"#636efa\",\"#EF553B\",\"#00cc96\",\"#ab63fa\",\"#FFA15A\",\"#19d3f3\",\"#FF6692\",\"#B6E880\",\"#FF97FF\",\"#FECB52\"],\"font\":{\"color\":\"#2a3f5f\"},\"hovermode\":\"closest\",\"hoverlabel\":{\"align\":\"left\"},\"paper_bgcolor\":\"white\",\"plot_bgcolor\":\"#E5ECF6\",\"polar\":{\"bgcolor\":\"#E5ECF6\",\"angularaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"radialaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"ternary\":{\"bgcolor\":\"#E5ECF6\",\"aaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"baxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"caxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"coloraxis\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"colorscale\":{\"sequential\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"sequentialminus\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"diverging\":[[0,\"#8e0152\"],[0.1,\"#c51b7d\"],[0.2,\"#de77ae\"],[0.3,\"#f1b6da\"],[0.4,\"#fde0ef\"],[0.5,\"#f7f7f7\"],[0.6,\"#e6f5d0\"],[0.7,\"#b8e186\"],[0.8,\"#7fbc41\"],[0.9,\"#4d9221\"],[1,\"#276419\"]]},\"xaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"yaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"scene\":{\"xaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"yaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"zaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2}},\"shapedefaults\":{\"line\":{\"color\":\"#2a3f5f\"}},\"annotationdefaults\":{\"arrowcolor\":\"#2a3f5f\",\"arrowhead\":0,\"arrowwidth\":1},\"geo\":{\"bgcolor\":\"white\",\"landcolor\":\"#E5ECF6\",\"subunitcolor\":\"white\",\"showland\":true,\"showlakes\":true,\"lakecolor\":\"white\"},\"title\":{\"x\":0.05},\"mapbox\":{\"style\":\"light\"}}}},                        {\"responsive\": true}                    ).then(function(){\n",[m
[31m-       "                            \n",[m
[31m-       "var gd = document.getElementById('02688a51-39fd-4e9b-a447-85759cdf4b86');\n",[m
[31m-       "var x = new MutationObserver(function (mutations, observer) {{\n",[m
[31m-       "        var display = window.getComputedStyle(gd).display;\n",[m
[31m-       "        if (!display || display === 'none') {{\n",[m
[31m-       "            console.log([gd, 'removed!']);\n",[m
[31m-       "            Plotly.purge(gd);\n",[m
[31m-       "            observer.disconnect();\n",[m
[31m-       "        }}\n",[m
[31m-       "}});\n",[m
[31m-       "\n",[m
[31m-       "// Listen for the removal of the full notebook cells\n",[m
[31m-       "var notebookContainer = gd.closest('#notebook-container');\n",[m
[31m-       "if (notebookContainer) {{\n",[m
[31m-       "    x.observe(notebookContainer, {childList: true});\n",[m
[31m-       "}}\n",[m
[31m-       "\n",[m
[31m-       "// Listen for the clearing of the current output cell\n",[m
[31m-       "var outputEl = gd.closest('.output');\n",[m
[31m-       "if (outputEl) {{\n",[m
[31m-       "    x.observe(outputEl, {childList: true});\n",[m
[31m-       "}}\n",[m
[31m-       "\n",[m
[31m-       "                        })                };                            </script>        </div>\n",[m
[31m-       "</body>\n",[m
[31m-       "</html>"[m
[32m+[m[32m      "cell_type": "code",[m
[32m+[m[32m      "source": [[m
[32m+[m[32m        "# Q1. Load the \"titanic\" dataset using the load_dataset function of seaborn. Use Plotly express to plot a\n",[m
[32m+[m[32m        "# scatter plot for age and fare columns in the titanic dataset.\n",[m
[32m+[m[32m        "import seaborn as sb\n",[m
[32m+[m[32m        "a = sb.load_dataset('titanic')\n",[m
[32m+[m[32m        "fig = go.Figure(data = go.Scatter(x = a.age,y = a.fare))\n",[m
[32m+[m[32m        "fig.show()"[m
[32m+[m[32m      ],[m
[32m+[m[32m      "metadata": {[m
[32m+[m[32m        "colab": {[m
[32m+[m[32m          "base_uri": "https://localhost:8080/",[m
[32m+[m[32m          "height": 542[m
[32m+[m[32m        },[m
[32m+[m[32m        "id": "7TatYnSd52DF",[m
[32m+[m[32m        "outputId": "eb264b72-d49e-4da0-9a8f-4fd78c843bb5"[m
[32m+[m[32m      },[m
[32m+[m[32m      "execution_count": 3,[m
[32m+[m[32m      "outputs": [[m
[32m+[m[32m        {[m
[32m+[m[32m          "output_type": "display_data",[m
[32m+[m[32m          "data": {[m
[32m+[m[32m            "text/html": [[m
[32m+[m[32m              "<html>\n",[m
[32m+[m[32m              "<head><meta charset=\"utf-8\" /></head>\n",[m
[32m+[m[32m              "<body>\n",[m
[32m+[m[32m              "    <div>            <script src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG\"></script><script type=\"text/javascript\">if (window.MathJax && window.MathJax.Hub && window.MathJax.Hub.Config) {window.MathJax.Hub.Config({SVG: {font: \"STIX-Web\"}});}</script>                <script type=\"text/javascript\">window.PlotlyConfig = {MathJaxConfig: 'local'};</script>\n",[m
[32m+[m[32m              "        <script src=\"https://cdn.plot.ly/plotly-2.18.2.min.js\"></script>                <div id=\"02688a51-39fd-4e9b-a447-85759cdf4b86\" class=\"plotly-graph-div\" style=\"height:525px; width:100%;\"></div>            <script type=\"text/javascript\">                                    window.PLOTLYENV=window.PLOTLYENV || {};                                    if (document.getElementById(\"02688a51-39fd-4e9b-a447-85759cdf4b86\")) {                    Plotly.newPlot(                        \"02688a51-39fd-4e9b-a447-85759cdf4b86\",                        [{\"x\":[22.0,38.0,26.0,35.0,35.0,null,54.0,2.0,27.0,14.0,4.0,58.0,20.0,39.0,14.0,55.0,2.0,null,31.0,null,35.0,34.0,15.0,28.0,8.0,38.0,null,19.0,null,null,40.0,null,null,66.0,28.0,42.0,null,21.0,18.0,14.0,40.0,27.0,null,3.0,19.0,null,null,null,null,18.0,7.0,21.0,49.0,29.0,65.0,null,21.0,28.5,5.0,11.0,22.0,38.0,45.0,4.0,null,null,29.0,19.0,17.0,26.0,32.0,16.0,21.0,26.0,32.0,25.0,null,null,0.83,30.0,22.0,29.0,null,28.0,17.0,33.0,16.0,null,23.0,24.0,29.0,20.0,46.0,26.0,59.0,null,71.0,23.0,34.0,34.0,28.0,null,21.0,33.0,37.0,28.0,21.0,null,38.0,null,47.0,14.5,22.0,20.0,17.0,21.0,70.5,29.0,24.0,2.0,21.0,null,32.5,32.5,54.0,12.0,null,24.0,null,45.0,33.0,20.0,47.0,29.0,25.0,23.0,19.0,37.0,16.0,24.0,null,22.0,24.0,19.0,18.0,19.0,27.0,9.0,36.5,42.0,51.0,22.0,55.5,40.5,null,51.0,16.0,30.0,null,null,44.0,40.0,26.0,17.0,1.0,9.0,null,45.0,null,28.0,61.0,4.0,1.0,21.0,56.0,18.0,null,50.0,30.0,36.0,null,null,9.0,1.0,4.0,null,null,45.0,40.0,36.0,32.0,19.0,19.0,3.0,44.0,58.0,null,42.0,null,24.0,28.0,null,34.0,45.5,18.0,2.0,32.0,26.0,16.0,40.0,24.0,35.0,22.0,30.0,null,31.0,27.0,42.0,32.0,30.0,16.0,27.0,51.0,null,38.0,22.0,19.0,20.5,18.0,null,35.0,29.0,59.0,5.0,24.0,null,44.0,8.0,19.0,33.0,null,null,29.0,22.0,30.0,44.0,25.0,24.0,37.0,54.0,null,29.0,62.0,30.0,41.0,29.0,null,30.0,35.0,50.0,null,3.0,52.0,40.0,null,36.0,16.0,25.0,58.0,35.0,null,25.0,41.0,37.0,null,63.0,45.0,null,7.0,35.0,65.0,28.0,16.0,19.0,null,33.0,30.0,22.0,42.0,22.0,26.0,19.0,36.0,24.0,24.0,null,23.5,2.0,null,50.0,null,null,19.0,null,null,0.92,null,17.0,30.0,30.0,24.0,18.0,26.0,28.0,43.0,26.0,24.0,54.0,31.0,40.0,22.0,27.0,30.0,22.0,null,36.0,61.0,36.0,31.0,16.0,null,45.5,38.0,16.0,null,null,29.0,41.0,45.0,45.0,2.0,24.0,28.0,25.0,36.0,24.0,40.0,null,3.0,42.0,23.0,null,15.0,25.0,null,28.0,22.0,38.0,null,null,40.0,29.0,45.0,35.0,null,30.0,60.0,null,null,24.0,25.0,18.0,19.0,22.0,3.0,null,22.0,27.0,20.0,19.0,42.0,1.0,32.0,35.0,null,18.0,1.0,36.0,null,17.0,36.0,21.0,28.0,23.0,24.0,22.0,31.0,46.0,23.0,28.0,39.0,26.0,21.0,28.0,20.0,34.0,51.0,3.0,21.0,null,null,null,33.0,null,44.0,null,34.0,18.0,30.0,10.0,null,21.0,29.0,28.0,18.0,null,28.0,19.0,null,32.0,28.0,null,42.0,17.0,50.0,14.0,21.0,24.0,64.0,31.0,45.0,20.0,25.0,28.0,null,4.0,13.0,34.0,5.0,52.0,36.0,null,30.0,49.0,null,29.0,65.0,null,50.0,null,48.0,34.0,47.0,48.0,null,38.0,null,56.0,null,0.75,null,38.0,33.0,23.0,22.0,null,34.0,29.0,22.0,2.0,9.0,null,50.0,63.0,25.0,null,35.0,58.0,30.0,9.0,null,21.0,55.0,71.0,21.0,null,54.0,null,25.0,24.0,17.0,21.0,null,37.0,16.0,18.0,33.0,null,28.0,26.0,29.0,null,36.0,54.0,24.0,47.0,34.0,null,36.0,32.0,30.0,22.0,null,44.0,null,40.5,50.0,null,39.0,23.0,2.0,null,17.0,null,30.0,7.0,45.0,30.0,null,22.0,36.0,9.0,11.0,32.0,50.0,64.0,19.0,null,33.0,8.0,17.0,27.0,null,22.0,22.0,62.0,48.0,null,39.0,36.0,null,40.0,28.0,null,null,24.0,19.0,29.0,null,32.0,62.0,53.0,36.0,null,16.0,19.0,34.0,39.0,null,32.0,25.0,39.0,54.0,36.0,null,18.0,47.0,60.0,22.0,null,35.0,52.0,47.0,null,37.0,36.0,null,49.0,null,49.0,24.0,null,null,44.0,35.0,36.0,30.0,27.0,22.0,40.0,39.0,null,null,null,35.0,24.0,34.0,26.0,4.0,26.0,27.0,42.0,20.0,21.0,21.0,61.0,57.0,21.0,26.0,null,80.0,51.0,32.0,null,9.0,28.0,32.0,31.0,41.0,null,20.0,24.0,2.0,null,0.75,48.0,19.0,56.0,null,23.0,null,18.0,21.0,null,18.0,24.0,null,32.0,23.0,58.0,50.0,40.0,47.0,36.0,20.0,32.0,25.0,null,43.0,null,40.0,31.0,70.0,31.0,null,18.0,24.5,18.0,43.0,36.0,null,27.0,20.0,14.0,60.0,25.0,14.0,19.0,18.0,15.0,31.0,4.0,null,25.0,60.0,52.0,44.0,null,49.0,42.0,18.0,35.0,18.0,25.0,26.0,39.0,45.0,42.0,22.0,null,24.0,null,48.0,29.0,52.0,19.0,38.0,27.0,null,33.0,6.0,17.0,34.0,50.0,27.0,20.0,30.0,null,25.0,25.0,29.0,11.0,null,23.0,23.0,28.5,48.0,35.0,null,null,null,36.0,21.0,24.0,31.0,70.0,16.0,30.0,19.0,31.0,4.0,6.0,33.0,23.0,48.0,0.67,28.0,18.0,34.0,33.0,null,41.0,20.0,36.0,16.0,51.0,null,30.5,null,32.0,24.0,48.0,57.0,null,54.0,18.0,null,5.0,null,43.0,13.0,17.0,29.0,null,25.0,25.0,18.0,8.0,1.0,46.0,null,16.0,null,null,25.0,39.0,49.0,31.0,30.0,30.0,34.0,31.0,11.0,0.42,27.0,31.0,39.0,18.0,39.0,33.0,26.0,39.0,35.0,6.0,30.5,null,23.0,31.0,43.0,10.0,52.0,27.0,38.0,27.0,2.0,null,null,1.0,null,62.0,15.0,0.83,null,23.0,18.0,39.0,21.0,null,32.0,null,20.0,16.0,30.0,34.5,17.0,42.0,null,35.0,28.0,null,4.0,74.0,9.0,16.0,44.0,18.0,45.0,51.0,24.0,null,41.0,21.0,48.0,null,24.0,42.0,27.0,31.0,null,4.0,26.0,47.0,33.0,47.0,28.0,15.0,20.0,19.0,null,56.0,25.0,33.0,22.0,28.0,25.0,39.0,27.0,19.0,null,26.0,32.0],\"y\":[7.25,71.2833,7.925,53.1,8.05,8.4583,51.8625,21.075,11.1333,30.0708,16.7,26.55,8.05,31.275,7.8542,16.0,29.125,13.0,18.0,7.225,26.0,13.0,8.0292,35.5,21.075,31.3875,7.225,263.0,7.8792,7.8958,27.7208,146.5208,7.75,10.5,82.1708,52.0,7.2292,8.05,18.0,11.2417,9.475,21.0,7.8958,41.5792,7.8792,8.05,15.5,7.75,21.6792,17.8,39.6875,7.8,76.7292,26.0,61.9792,35.5,10.5,7.2292,27.75,46.9,7.2292,80.0,83.475,27.9,27.7208,15.2458,10.5,8.1583,7.925,8.6625,10.5,46.9,73.5,14.4542,56.4958,7.65,7.8958,8.05,29.0,12.475,9.0,9.5,7.7875,47.1,10.5,15.85,34.375,8.05,263.0,8.05,8.05,7.8542,61.175,20.575,7.25,8.05,34.6542,63.3583,23.0,26.0,7.8958,7.8958,77.2875,8.6542,7.925,7.8958,7.65,7.775,7.8958,24.15,52.0,14.4542,8.05,9.825,14.4583,7.925,7.75,21.0,247.5208,31.275,73.5,8.05,30.0708,13.0,77.2875,11.2417,7.75,7.1417,22.3583,6.975,7.8958,7.05,14.5,26.0,13.0,15.0458,26.2833,53.1,9.2167,79.2,15.2458,7.75,15.85,6.75,11.5,36.75,7.7958,34.375,26.0,13.0,12.525,66.6,8.05,14.5,7.3125,61.3792,7.7333,8.05,8.6625,69.55,16.1,15.75,7.775,8.6625,39.6875,20.525,55.0,27.9,25.925,56.4958,33.5,29.125,11.1333,7.925,30.6958,7.8542,25.4667,28.7125,13.0,0.0,69.55,15.05,31.3875,39.0,22.025,50.0,15.5,26.55,15.5,7.8958,13.0,13.0,7.8542,26.0,27.7208,146.5208,7.75,8.4042,7.75,13.0,9.5,69.55,6.4958,7.225,8.05,10.4625,15.85,18.7875,7.75,31.0,7.05,21.0,7.25,13.0,7.75,113.275,7.925,27.0,76.2917,10.5,8.05,13.0,8.05,7.8958,90.0,9.35,10.5,7.25,13.0,25.4667,83.475,7.775,13.5,31.3875,10.5,7.55,26.0,26.25,10.5,12.275,14.4542,15.5,10.5,7.125,7.225,90.0,7.775,14.5,52.5542,26.0,7.25,10.4625,26.55,16.1,20.2125,15.2458,79.2,86.5,512.3292,26.0,7.75,31.3875,79.65,0.0,7.75,10.5,39.6875,7.775,153.4625,135.6333,31.0,0.0,19.5,29.7,7.75,77.9583,7.75,0.0,29.125,20.25,7.75,7.8542,9.5,8.05,26.0,8.6625,9.5,7.8958,13.0,7.75,78.85,91.0792,12.875,8.85,7.8958,27.7208,7.2292,151.55,30.5,247.5208,7.75,23.25,0.0,12.35,8.05,151.55,110.8833,108.9,24.0,56.9292,83.1583,262.375,26.0,7.8958,26.25,7.8542,26.0,14.0,164.8667,134.5,7.25,7.8958,12.35,29.0,69.55,135.6333,6.2375,13.0,20.525,57.9792,23.25,28.5,153.4625,18.0,133.65,7.8958,66.6,134.5,8.05,35.5,26.0,263.0,13.0,13.0,13.0,13.0,13.0,16.1,15.9,8.6625,9.225,35.0,7.2292,17.8,7.225,9.5,55.0,13.0,7.8792,7.8792,27.9,27.7208,14.4542,7.05,15.5,7.25,75.25,7.2292,7.75,69.3,55.4417,6.4958,8.05,135.6333,21.075,82.1708,7.25,211.5,4.0125,7.775,227.525,15.7417,7.925,52.0,7.8958,73.5,46.9,13.0,7.7292,12.0,120.0,7.7958,7.925,113.275,16.7,7.7958,7.8542,26.0,10.5,12.65,7.925,8.05,9.825,15.85,8.6625,21.0,7.75,18.75,7.775,25.4667,7.8958,6.8583,90.0,0.0,7.925,8.05,32.5,13.0,13.0,24.15,7.8958,7.7333,7.875,14.4,20.2125,7.25,26.0,26.0,7.75,8.05,26.55,16.1,26.0,7.125,55.9,120.0,34.375,18.75,263.0,10.5,26.25,9.5,7.775,13.0,8.1125,81.8583,19.5,26.55,19.2583,30.5,27.75,19.9667,27.75,89.1042,8.05,7.8958,26.55,51.8625,10.5,7.75,26.55,8.05,38.5,13.0,8.05,7.05,0.0,26.55,7.725,19.2583,7.25,8.6625,27.75,13.7917,9.8375,52.0,21.0,7.0458,7.5208,12.2875,46.9,0.0,8.05,9.5875,91.0792,25.4667,90.0,29.7,8.05,15.9,19.9667,7.25,30.5,49.5042,8.05,14.4583,78.2667,15.1,151.55,7.7958,8.6625,7.75,7.6292,9.5875,86.5,108.9,26.0,26.55,22.525,56.4958,7.75,8.05,26.2875,59.4,7.4958,34.0208,10.5,24.15,26.0,7.8958,93.5,7.8958,7.225,57.9792,7.2292,7.75,10.5,221.7792,7.925,11.5,26.0,7.2292,7.2292,22.3583,8.6625,26.25,26.55,106.425,14.5,49.5,71.0,31.275,31.275,26.0,106.425,26.0,26.0,13.8625,20.525,36.75,110.8833,26.0,7.8292,7.225,7.775,26.55,39.6,227.525,79.65,17.4,7.75,7.8958,13.5,8.05,8.05,24.15,7.8958,21.075,7.2292,7.8542,10.5,51.4792,26.3875,7.75,8.05,14.5,13.0,55.9,14.4583,7.925,30.0,110.8833,26.0,40.125,8.7125,79.65,15.0,79.2,8.05,8.05,7.125,78.2667,7.25,7.75,26.0,24.15,33.0,0.0,7.225,56.9292,27.0,7.8958,42.4,8.05,26.55,15.55,7.8958,30.5,41.5792,153.4625,31.275,7.05,15.5,7.75,8.05,65.0,14.4,16.1,39.0,10.5,14.4542,52.5542,15.7417,7.8542,16.1,32.3208,12.35,77.9583,7.8958,7.7333,30.0,7.0542,30.5,0.0,27.9,13.0,7.925,26.25,39.6875,16.1,7.8542,69.3,27.9,56.4958,19.2583,76.7292,7.8958,35.5,7.55,7.55,7.8958,23.0,8.4333,7.8292,6.75,73.5,7.8958,15.5,13.0,113.275,133.65,7.225,25.5875,7.4958,7.925,73.5,13.0,7.775,8.05,52.0,39.0,52.0,10.5,13.0,0.0,7.775,8.05,9.8417,46.9,512.3292,8.1375,76.7292,9.225,46.9,39.0,41.5792,39.6875,10.1708,7.7958,211.3375,57.0,13.4167,56.4958,7.225,26.55,13.5,8.05,7.7333,110.8833,7.65,227.525,26.2875,14.4542,7.7417,7.8542,26.0,13.5,26.2875,151.55,15.2458,49.5042,26.55,52.0,9.4833,13.0,7.65,227.525,10.5,15.5,7.775,33.0,7.0542,13.0,13.0,53.1,8.6625,21.0,7.7375,26.0,7.925,211.3375,18.7875,0.0,13.0,13.0,16.1,34.375,512.3292,7.8958,7.8958,30.0,78.85,262.375,16.1,7.925,71.0,20.25,13.0,53.1,7.75,23.0,12.475,9.5,7.8958,65.0,14.5,7.7958,11.5,8.05,86.5,14.5,7.125,7.2292,120.0,7.775,77.9583,39.6,7.75,24.15,8.3625,9.5,7.8542,10.5,7.225,23.0,7.75,7.75,12.475,7.7375,211.3375,7.2292,57.0,30.0,23.45,7.05,7.25,7.4958,29.125,20.575,79.2,7.75,26.0,69.55,30.6958,7.8958,13.0,25.9292,8.6833,7.2292,24.15,13.0,26.25,120.0,8.5167,6.975,7.775,0.0,7.775,13.0,53.1,7.8875,24.15,10.5,31.275,8.05,0.0,7.925,37.0042,6.45,27.9,93.5,8.6625,0.0,12.475,39.6875,6.95,56.4958,37.0042,7.75,80.0,14.4542,18.75,7.2292,7.8542,8.3,83.1583,8.6625,8.05,56.4958,29.7,7.925,10.5,31.0,6.4375,8.6625,7.55,69.55,7.8958,33.0,89.1042,31.275,7.775,15.2458,39.4,26.0,9.35,164.8667,26.55,19.2583,7.2292,14.1083,11.5,25.9292,69.55,13.0,13.0,13.8583,50.4958,9.5,11.1333,7.8958,52.5542,5.0,9.0,24.0,7.225,9.8458,7.8958,7.8958,83.1583,26.0,7.8958,10.5167,10.5,7.05,29.125,13.0,30.0,23.45,30.0,7.75],\"type\":\"scatter\"}],                        {\"template\":{\"data\":{\"histogram2dcontour\":[{\"type\":\"histogram2dcontour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"choropleth\":[{\"type\":\"choropleth\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"histogram2d\":[{\"type\":\"histogram2d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmap\":[{\"type\":\"heatmap\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmapgl\":[{\"type\":\"heatmapgl\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"contourcarpet\":[{\"type\":\"contourcarpet\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"contour\":[{\"type\":\"contour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"surface\":[{\"type\":\"surface\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"mesh3d\":[{\"type\":\"mesh3d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"scatter\":[{\"fillpattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2},\"type\":\"scatter\"}],\"parcoords\":[{\"type\":\"parcoords\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolargl\":[{\"type\":\"scatterpolargl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"bar\":[{\"error_x\":{\"color\":\"#2a3f5f\"},\"error_y\":{\"color\":\"#2a3f5f\"},\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"bar\"}],\"scattergeo\":[{\"type\":\"scattergeo\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolar\":[{\"type\":\"scatterpolar\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"histogram\":[{\"marker\":{\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"histogram\"}],\"scattergl\":[{\"type\":\"scattergl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatter3d\":[{\"type\":\"scatter3d\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattermapbox\":[{\"type\":\"scattermapbox\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterternary\":[{\"type\":\"scatterternary\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattercarpet\":[{\"type\":\"scattercarpet\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"carpet\":[{\"aaxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"baxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"type\":\"carpet\"}],\"table\":[{\"cells\":{\"fill\":{\"color\":\"#EBF0F8\"},\"line\":{\"color\":\"white\"}},\"header\":{\"fill\":{\"color\":\"#C8D4E3\"},\"line\":{\"color\":\"white\"}},\"type\":\"table\"}],\"barpolar\":[{\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"barpolar\"}],\"pie\":[{\"automargin\":true,\"type\":\"pie\"}]},\"layout\":{\"autotypenumbers\":\"strict\",\"colorway\":[\"#636efa\",\"#EF553B\",\"#00cc96\",\"#ab63fa\",\"#FFA15A\",\"#19d3f3\",\"#FF6692\",\"#B6E880\",\"#FF97FF\",\"#FECB52\"],\"font\":{\"color\":\"#2a3f5f\"},\"hovermode\":\"closest\",\"hoverlabel\":{\"align\":\"left\"},\"paper_bgcolor\":\"white\",\"plot_bgcolor\":\"#E5ECF6\",\"polar\":{\"bgcolor\":\"#E5ECF6\",\"angularaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"radialaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"ternary\":{\"bgcolor\":\"#E5ECF6\",\"aaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"baxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"caxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"coloraxis\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"colorscale\":{\"sequential\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"sequentialminus\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"diverging\":[[0,\"#8e0152\"],[0.1,\"#c51b7d\"],[0.2,\"#de77ae\"],[0.3,\"#f1b6da\"],[0.4,\"#fde0ef\"],[0.5,\"#f7f7f7\"],[0.6,\"#e6f5d0\"],[0.7,\"#b8e186\"],[0.8,\"#7fbc41\"],[0.9,\"#4d9221\"],[1,\"#276419\"]]},\"xaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"yaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"scene\":{\"xaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"yaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"zaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2}},\"shapedefaults\":{\"line\":{\"color\":\"#2a3f5f\"}},\"annotationdefaults\":{\"arrowcolor\":\"#2a3f5f\",\"arrowhead\":0,\"arrowwidth\":1},\"geo\":{\"bgcolor\":\"white\",\"landcolor\":\"#E5ECF6\",\"subunitcolor\":\"white\",\"showland\":true,\"showlakes\":true,\"lakecolor\":\"white\"},\"title\":{\"x\":0.05},\"mapbox\":{\"style\":\"light\"}}}},                        {\"responsive\": true}                    ).then(function(){\n",[m
[32m+[m[32m              "                            \n",[m
[32m+[m[32m              "var gd = document.getElementById('02688a51-39fd-4e9b-a447-85759cdf4b86');\n",[m
[32m+[m[32m              "var x = new MutationObserver(function (mutations, observer) {{\n",[m
[32m+[m[32m              "        var display = window.getComputedStyle(gd).display;\n",[m
[32m+[m[32m              "        if (!display || display === 'none') {{\n",[m
[32m+[m[32m              "            console.log([gd, 'removed!']);\n",[m
[32m+[m[32m              "            Plotly.purge(gd);\n",[m
[32m+[m[32m              "            observer.disconnect();\n",[m
[32m+[m[32m              "        }}\n",[m
[32m+[m[32m              "}});\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "// Listen for the removal of the full notebook cells\n",[m
[32m+[m[32m              "var notebookContainer = gd.closest('#notebook-container');\n",[m
[32m+[m[32m              "if (notebookContainer) {{\n",[m
[32m+[m[32m              "    x.observe(notebookContainer, {childList: true});\n",[m
[32m+[m[32m              "}}\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "// Listen for the clearing of the current output cell\n",[m
[32m+[m[32m              "var outputEl = gd.closest('.output');\n",[m
[32m+[m[32m              "if (outputEl) {{\n",[m
[32m+[m[32m              "    x.observe(outputEl, {childList: true});\n",[m
[32m+[m[32m              "}}\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "                        })                };                            </script>        </div>\n",[m
[32m+[m[32m              "</body>\n",[m
[32m+[m[32m              "</html>"[m
[32m+[m[32m            ][m
[32m+[m[32m          },[m
[32m+[m[32m          "metadata": {}[m
[32m+[m[32m        }[m
       ][m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    }[m
[31m-   ],[m
[31m-   "source": [[m
[31m-    "# Q1. Load the \"titanic\" dataset using the load_dataset function of seaborn. Use Plotly express to plot a\n",[m
[31m-    "# scatter plot for age and fare columns in the titanic dataset.\n",[m
[31m-    "import seaborn as sb\n",[m
[31m-    "a = sb.load_dataset('titanic')\n",[m
[31m-    "fig = go.Figure(data = go.Scatter(x = a.age,y = a.fare))\n",[m
[31m-    "fig.show()"[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": 11,[m
[31m-   "metadata": {[m
[31m-    "colab": {[m
[31m-     "base_uri": "https://localhost:8080/",[m
[31m-     "height": 542[m
     },[m
[31m-    "id": "6Hguc81G6SrI",[m
[31m-    "outputId": "0e0e024d-da2e-49c0-82cf-7c579e27bb3a"[m
[31m-   },[m
[31m-   "outputs": [[m
     {[m
[31m-     "data": {[m
[31m-      "text/html": [[m
[31m-       "<html>\n",[m
[31m-       "<head><meta charset=\"utf-8\" /></head>\n",[m
[31m-       "<body>\n",[m
[31m-       "    <div>            <script src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG\"></script><script type=\"text/javascript\">if (window.MathJax && window.MathJax.Hub && window.MathJax.Hub.Config) {window.MathJax.Hub.Config({SVG: {font: \"STIX-Web\"}});}</script>                <script type=\"text/javascript\">window.PlotlyConfig = {MathJaxConfig: 'local'};</script>\n",[m
[31m-       "        <script src=\"https://cdn.plot.ly/plotly-2.18.2.min.js\"></script>                <div id=\"469a45c2-0e21-4bc2-846d-7427fbfe0b09\" class=\"plotly-graph-div\" style=\"height:525px; width:100%;\"></div>            <script type=\"text/javascript\">                                    window.PLOTLYENV=window.PLOTLYENV || {};                                    if (document.getElementById(\"469a45c2-0e21-4bc2-846d-7427fbfe0b09\")) {                    Plotly.newPlot(                        \"469a45c2-0e21-4bc2-846d-7427fbfe0b09\",                        [{\"alignmentgroup\":\"True\",\"boxpoints\":\"all\",\"hovertemplate\":\"tip=%{x}<extra></extra>\",\"legendgroup\":\"\",\"marker\":{\"color\":\"#636efa\"},\"name\":\"\",\"notched\":false,\"offsetgroup\":\"\",\"orientation\":\"h\",\"showlegend\":false,\"x\":[1.01,1.66,3.5,3.31,3.61,4.71,2.0,3.12,1.96,3.23,1.71,5.0,1.57,3.0,3.02,3.92,1.67,3.71,3.5,3.35,4.08,2.75,2.23,7.58,3.18,2.34,2.0,2.0,4.3,3.0,1.45,2.5,3.0,2.45,3.27,3.6,2.0,3.07,2.31,5.0,2.24,2.54,3.06,1.32,5.6,3.0,5.0,6.0,2.05,3.0,2.5,2.6,5.2,1.56,4.34,3.51,3.0,1.5,1.76,6.73,3.21,2.0,1.98,3.76,2.64,3.15,2.47,1.0,2.01,2.09,1.97,3.0,3.14,5.0,2.2,1.25,3.08,4.0,3.0,2.71,3.0,3.4,1.83,5.0,2.03,5.17,2.0,4.0,5.85,3.0,3.0,3.5,1.0,4.3,3.25,4.73,4.0,1.5,3.0,1.5,2.5,3.0,2.5,3.48,4.08,1.64,4.06,4.29,3.76,4.0,3.0,1.0,4.0,2.55,4.0,3.5,5.07,1.5,1.8,2.92,2.31,1.68,2.5,2.0,2.52,4.2,1.48,2.0,2.0,2.18,1.5,2.83,1.5,2.0,3.25,1.25,2.0,2.0,2.0,2.75,3.5,6.7,5.0,5.0,2.3,1.5,1.36,1.63,1.73,2.0,2.5,2.0,2.74,2.0,2.0,5.14,5.0,3.75,2.61,2.0,3.5,2.5,2.0,2.0,3.0,3.48,2.24,4.5,1.61,2.0,10.0,3.16,5.15,3.18,4.0,3.11,2.0,2.0,4.0,3.55,3.68,5.65,3.5,6.5,3.0,5.0,3.5,2.0,3.5,4.0,1.5,4.19,2.56,2.02,4.0,1.44,2.0,5.0,2.0,2.0,4.0,2.01,2.0,2.5,4.0,3.23,3.41,3.0,2.03,2.23,2.0,5.16,9.0,2.5,6.5,1.1,3.0,1.5,1.44,3.09,2.2,3.48,1.92,3.0,1.58,2.5,2.0,3.0,2.72,2.88,2.0,3.0,3.39,1.47,3.0,1.25,1.0,1.17,4.67,5.92,2.0,2.0,1.75,3.0],\"x0\":\" \",\"xaxis\":\"x\",\"y0\":\" \",\"yaxis\":\"y\",\"type\":\"box\"}],                        {\"template\":{\"data\":{\"histogram2dcontour\":[{\"type\":\"histogram2dcontour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"choropleth\":[{\"type\":\"choropleth\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"histogram2d\":[{\"type\":\"histogram2d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmap\":[{\"type\":\"heatmap\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmapgl\":[{\"type\":\"heatmapgl\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"contourcarpet\":[{\"type\":\"contourcarpet\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"contour\":[{\"type\":\"contour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"surface\":[{\"type\":\"surface\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"mesh3d\":[{\"type\":\"mesh3d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"scatter\":[{\"fillpattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2},\"type\":\"scatter\"}],\"parcoords\":[{\"type\":\"parcoords\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolargl\":[{\"type\":\"scatterpolargl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"bar\":[{\"error_x\":{\"color\":\"#2a3f5f\"},\"error_y\":{\"color\":\"#2a3f5f\"},\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"bar\"}],\"scattergeo\":[{\"type\":\"scattergeo\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolar\":[{\"type\":\"scatterpolar\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"histogram\":[{\"marker\":{\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"histogram\"}],\"scattergl\":[{\"type\":\"scattergl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatter3d\":[{\"type\":\"scatter3d\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattermapbox\":[{\"type\":\"scattermapbox\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterternary\":[{\"type\":\"scatterternary\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattercarpet\":[{\"type\":\"scattercarpet\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"carpet\":[{\"aaxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"baxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"type\":\"carpet\"}],\"table\":[{\"cells\":{\"fill\":{\"color\":\"#EBF0F8\"},\"line\":{\"color\":\"white\"}},\"header\":{\"fill\":{\"color\":\"#C8D4E3\"},\"line\":{\"color\":\"white\"}},\"type\":\"table\"}],\"barpolar\":[{\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"barpolar\"}],\"pie\":[{\"automargin\":true,\"type\":\"pie\"}]},\"layout\":{\"autotypenumbers\":\"strict\",\"colorway\":[\"#636efa\",\"#EF553B\",\"#00cc96\",\"#ab63fa\",\"#FFA15A\",\"#19d3f3\",\"#FF6692\",\"#B6E880\",\"#FF97FF\",\"#FECB52\"],\"font\":{\"color\":\"#2a3f5f\"},\"hovermode\":\"closest\",\"hoverlabel\":{\"align\":\"left\"},\"paper_bgcolor\":\"white\",\"plot_bgcolor\":\"#E5ECF6\",\"polar\":{\"bgcolor\":\"#E5ECF6\",\"angularaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"radialaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"ternary\":{\"bgcolor\":\"#E5ECF6\",\"aaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"baxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"caxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"coloraxis\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"colorscale\":{\"sequential\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"sequentialminus\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"diverging\":[[0,\"#8e0152\"],[0.1,\"#c51b7d\"],[0.2,\"#de77ae\"],[0.3,\"#f1b6da\"],[0.4,\"#fde0ef\"],[0.5,\"#f7f7f7\"],[0.6,\"#e6f5d0\"],[0.7,\"#b8e186\"],[0.8,\"#7fbc41\"],[0.9,\"#4d9221\"],[1,\"#276419\"]]},\"xaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"yaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"scene\":{\"xaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"yaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"zaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2}},\"shapedefaults\":{\"line\":{\"color\":\"#2a3f5f\"}},\"annotationdefaults\":{\"arrowcolor\":\"#2a3f5f\",\"arrowhead\":0,\"arrowwidth\":1},\"geo\":{\"bgcolor\":\"white\",\"landcolor\":\"#E5ECF6\",\"subunitcolor\":\"white\",\"showland\":true,\"showlakes\":true,\"lakecolor\":\"white\"},\"title\":{\"x\":0.05},\"mapbox\":{\"style\":\"light\"}}},\"xaxis\":{\"anchor\":\"y\",\"domain\":[0.0,1.0],\"title\":{\"text\":\"tip\"}},\"yaxis\":{\"anchor\":\"x\",\"domain\":[0.0,1.0]},\"legend\":{\"tracegroupgap\":0},\"margin\":{\"t\":60},\"boxmode\":\"group\"},                        {\"responsive\": true}                    ).then(function(){\n",[m
[31m-       "                            \n",[m
[31m-       "var gd = document.getElementById('469a45c2-0e21-4bc2-846d-7427fbfe0b09');\n",[m
[31m-       "var x = new MutationObserver(function (mutations, observer) {{\n",[m
[31m-       "        var display = window.getComputedStyle(gd).display;\n",[m
[31m-       "        if (!display || display === 'none') {{\n",[m
[31m-       "            console.log([gd, 'removed!']);\n",[m
[31m-       "            Plotly.purge(gd);\n",[m
[31m-       "            observer.disconnect();\n",[m
[31m-       "        }}\n",[m
[31m-       "}});\n",[m
[31m-       "\n",[m
[31m-       "// Listen for the removal of the full notebook cells\n",[m
[31m-       "var notebookContainer = gd.closest('#notebook-container');\n",[m
[31m-       "if (notebookContainer) {{\n",[m
[31m-       "    x.observe(notebookContainer, {childList: true});\n",[m
[31m-       "}}\n",[m
[31m-       "\n",[m
[31m-       "// Listen for the clearing of the current output cell\n",[m
[31m-       "var outputEl = gd.closest('.output');\n",[m
[31m-       "if (outputEl) {{\n",[m
[31m-       "    x.observe(outputEl, {childList: true});\n",[m
[31m-       "}}\n",[m
[31m-       "\n",[m
[31m-       "                        })                };                            </script>        </div>\n",[m
[31m-       "</body>\n",[m
[31m-       "</html>"[m
[32m+[m[32m      "cell_type": "code",[m
[32m+[m[32m      "source": [[m
[32m+[m[32m        "# Q2. Using the tips dataset in the Plotly library, plot a box plot using Plotly express.\n",[m
[32m+[m[32m        "import plotly.express as px\n",[m
[32m+[m[32m        "tips = px.data.tips()\n",[m
[32m+[m[32m        "fig = px.box(tips, x=\"tip\", points=\"all\")\n",[m
[32m+[m[32m        "fig.show()\n"[m
[32m+[m[32m      ],[m
[32m+[m[32m      "metadata": {[m
[32m+[m[32m        "colab": {[m
[32m+[m[32m          "base_uri": "https://localhost:8080/",[m
[32m+[m[32m          "height": 542[m
[32m+[m[32m        },[m
[32m+[m[32m        "id": "6Hguc81G6SrI",[m
[32m+[m[32m        "outputId": "0e0e024d-da2e-49c0-82cf-7c579e27bb3a"[m
[32m+[m[32m      },[m
[32m+[m[32m      "execution_count": 11,[m
[32m+[m[32m      "outputs": [[m
[32m+[m[32m        {[m
[32m+[m[32m          "output_type": "display_data",[m
[32m+[m[32m          "data": {[m
[32m+[m[32m            "text/html": [[m
[32m+[m[32m              "<html>\n",[m
[32m+[m[32m              "<head><meta charset=\"utf-8\" /></head>\n",[m
[32m+[m[32m              "<body>\n",[m
[32m+[m[32m              "    <div>            <script src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG\"></script><script type=\"text/javascript\">if (window.MathJax && window.MathJax.Hub && window.MathJax.Hub.Config) {window.MathJax.Hub.Config({SVG: {font: \"STIX-Web\"}});}</script>                <script type=\"text/javascript\">window.PlotlyConfig = {MathJaxConfig: 'local'};</script>\n",[m
[32m+[m[32m              "        <script src=\"https://cdn.plot.ly/plotly-2.18.2.min.js\"></script>                <div id=\"469a45c2-0e21-4bc2-846d-7427fbfe0b09\" class=\"plotly-graph-div\" style=\"height:525px; width:100%;\"></div>            <script type=\"text/javascript\">                                    window.PLOTLYENV=window.PLOTLYENV || {};                                    if (document.getElementById(\"469a45c2-0e21-4bc2-846d-7427fbfe0b09\")) {                    Plotly.newPlot(                        \"469a45c2-0e21-4bc2-846d-7427fbfe0b09\",                        [{\"alignmentgroup\":\"True\",\"boxpoints\":\"all\",\"hovertemplate\":\"tip=%{x}<extra></extra>\",\"legendgroup\":\"\",\"marker\":{\"color\":\"#636efa\"},\"name\":\"\",\"notched\":false,\"offsetgroup\":\"\",\"orientation\":\"h\",\"showlegend\":false,\"x\":[1.01,1.66,3.5,3.31,3.61,4.71,2.0,3.12,1.96,3.23,1.71,5.0,1.57,3.0,3.02,3.92,1.67,3.71,3.5,3.35,4.08,2.75,2.23,7.58,3.18,2.34,2.0,2.0,4.3,3.0,1.45,2.5,3.0,2.45,3.27,3.6,2.0,3.07,2.31,5.0,2.24,2.54,3.06,1.32,5.6,3.0,5.0,6.0,2.05,3.0,2.5,2.6,5.2,1.56,4.34,3.51,3.0,1.5,1.76,6.73,3.21,2.0,1.98,3.76,2.64,3.15,2.47,1.0,2.01,2.09,1.97,3.0,3.14,5.0,2.2,1.25,3.08,4.0,3.0,2.71,3.0,3.4,1.83,5.0,2.03,5.17,2.0,4.0,5.85,3.0,3.0,3.5,1.0,4.3,3.25,4.73,4.0,1.5,3.0,1.5,2.5,3.0,2.5,3.48,4.08,1.64,4.06,4.29,3.76,4.0,3.0,1.0,4.0,2.55,4.0,3.5,5.07,1.5,1.8,2.92,2.31,1.68,2.5,2.0,2.52,4.2,1.48,2.0,2.0,2.18,1.5,2.83,1.5,2.0,3.25,1.25,2.0,2.0,2.0,2.75,3.5,6.7,5.0,5.0,2.3,1.5,1.36,1.63,1.73,2.0,2.5,2.0,2.74,2.0,2.0,5.14,5.0,3.75,2.61,2.0,3.5,2.5,2.0,2.0,3.0,3.48,2.24,4.5,1.61,2.0,10.0,3.16,5.15,3.18,4.0,3.11,2.0,2.0,4.0,3.55,3.68,5.65,3.5,6.5,3.0,5.0,3.5,2.0,3.5,4.0,1.5,4.19,2.56,2.02,4.0,1.44,2.0,5.0,2.0,2.0,4.0,2.01,2.0,2.5,4.0,3.23,3.41,3.0,2.03,2.23,2.0,5.16,9.0,2.5,6.5,1.1,3.0,1.5,1.44,3.09,2.2,3.48,1.92,3.0,1.58,2.5,2.0,3.0,2.72,2.88,2.0,3.0,3.39,1.47,3.0,1.25,1.0,1.17,4.67,5.92,2.0,2.0,1.75,3.0],\"x0\":\" \",\"xaxis\":\"x\",\"y0\":\" \",\"yaxis\":\"y\",\"type\":\"box\"}],                        {\"template\":{\"data\":{\"histogram2dcontour\":[{\"type\":\"histogram2dcontour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"choropleth\":[{\"type\":\"choropleth\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"histogram2d\":[{\"type\":\"histogram2d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmap\":[{\"type\":\"heatmap\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmapgl\":[{\"type\":\"heatmapgl\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"contourcarpet\":[{\"type\":\"contourcarpet\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"contour\":[{\"type\":\"contour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"surface\":[{\"type\":\"surface\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"mesh3d\":[{\"type\":\"mesh3d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"scatter\":[{\"fillpattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2},\"type\":\"scatter\"}],\"parcoords\":[{\"type\":\"parcoords\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolargl\":[{\"type\":\"scatterpolargl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"bar\":[{\"error_x\":{\"color\":\"#2a3f5f\"},\"error_y\":{\"color\":\"#2a3f5f\"},\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"bar\"}],\"scattergeo\":[{\"type\":\"scattergeo\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolar\":[{\"type\":\"scatterpolar\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"histogram\":[{\"marker\":{\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"histogram\"}],\"scattergl\":[{\"type\":\"scattergl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatter3d\":[{\"type\":\"scatter3d\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattermapbox\":[{\"type\":\"scattermapbox\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterternary\":[{\"type\":\"scatterternary\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattercarpet\":[{\"type\":\"scattercarpet\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"carpet\":[{\"aaxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"baxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"type\":\"carpet\"}],\"table\":[{\"cells\":{\"fill\":{\"color\":\"#EBF0F8\"},\"line\":{\"color\":\"white\"}},\"header\":{\"fill\":{\"color\":\"#C8D4E3\"},\"line\":{\"color\":\"white\"}},\"type\":\"table\"}],\"barpolar\":[{\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"barpolar\"}],\"pie\":[{\"automargin\":true,\"type\":\"pie\"}]},\"layout\":{\"autotypenumbers\":\"strict\",\"colorway\":[\"#636efa\",\"#EF553B\",\"#00cc96\",\"#ab63fa\",\"#FFA15A\",\"#19d3f3\",\"#FF6692\",\"#B6E880\",\"#FF97FF\",\"#FECB52\"],\"font\":{\"color\":\"#2a3f5f\"},\"hovermode\":\"closest\",\"hoverlabel\":{\"align\":\"left\"},\"paper_bgcolor\":\"white\",\"plot_bgcolor\":\"#E5ECF6\",\"polar\":{\"bgcolor\":\"#E5ECF6\",\"angularaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"radialaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"ternary\":{\"bgcolor\":\"#E5ECF6\",\"aaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"baxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"caxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"coloraxis\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"colorscale\":{\"sequential\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"sequentialminus\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"diverging\":[[0,\"#8e0152\"],[0.1,\"#c51b7d\"],[0.2,\"#de77ae\"],[0.3,\"#f1b6da\"],[0.4,\"#fde0ef\"],[0.5,\"#f7f7f7\"],[0.6,\"#e6f5d0\"],[0.7,\"#b8e186\"],[0.8,\"#7fbc41\"],[0.9,\"#4d9221\"],[1,\"#276419\"]]},\"xaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"yaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"scene\":{\"xaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"yaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"zaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2}},\"shapedefaults\":{\"line\":{\"color\":\"#2a3f5f\"}},\"annotationdefaults\":{\"arrowcolor\":\"#2a3f5f\",\"arrowhead\":0,\"arrowwidth\":1},\"geo\":{\"bgcolor\":\"white\",\"landcolor\":\"#E5ECF6\",\"subunitcolor\":\"white\",\"showland\":true,\"showlakes\":true,\"lakecolor\":\"white\"},\"title\":{\"x\":0.05},\"mapbox\":{\"style\":\"light\"}}},\"xaxis\":{\"anchor\":\"y\",\"domain\":[0.0,1.0],\"title\":{\"text\":\"tip\"}},\"yaxis\":{\"anchor\":\"x\",\"domain\":[0.0,1.0]},\"legend\":{\"tracegroupgap\":0},\"margin\":{\"t\":60},\"boxmode\":\"group\"},                        {\"responsive\": true}                    ).then(function(){\n",[m
[32m+[m[32m              "                            \n",[m
[32m+[m[32m              "var gd = document.getElementById('469a45c2-0e21-4bc2-846d-7427fbfe0b09');\n",[m
[32m+[m[32m              "var x = new MutationObserver(function (mutations, observer) {{\n",[m
[32m+[m[32m              "        var display = window.getComputedStyle(gd).display;\n",[m
[32m+[m[32m              "        if (!display || display === 'none') {{\n",[m
[32m+[m[32m              "            console.log([gd, 'removed!']);\n",[m
[32m+[m[32m              "            Plotly.purge(gd);\n",[m
[32m+[m[32m              "            observer.disconnect();\n",[m
[32m+[m[32m              "        }}\n",[m
[32m+[m[32m              "}});\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "// Listen for the removal of the full notebook cells\n",[m
[32m+[m[32m              "var notebookContainer = gd.closest('#notebook-container');\n",[m
[32m+[m[32m              "if (notebookContainer) {{\n",[m
[32m+[m[32m              "    x.observe(notebookContainer, {childList: true});\n",[m
[32m+[m[32m              "}}\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "// Listen for the clearing of the current output cell\n",[m
[32m+[m[32m              "var outputEl = gd.closest('.output');\n",[m
[32m+[m[32m              "if (outputEl) {{\n",[m
[32m+[m[32m              "    x.observe(outputEl, {childList: true});\n",[m
[32m+[m[32m              "}}\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "                        })                };                            </script>        </div>\n",[m
[32m+[m[32m              "</body>\n",[m
[32m+[m[32m              "</html>"[m
[32m+[m[32m            ][m
[32m+[m[32m          },[m
[32m+[m[32m          "metadata": {}[m
[32m+[m[32m        }[m
       ][m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    }[m
[31m-   ],[m
[31m-   "source": [[m
[31m-    "# Q2. Using the tips dataset in the Plotly library, plot a box plot using Plotly express.\n",[m
[31m-    "import plotly.express as px\n",[m
[31m-    "tips = px.data.tips()\n",[m
[31m-    "fig = px.box(tips, x=\"tip\", points=\"all\")\n",[m
[31m-    "fig.show()\n"[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": 15,[m
[31m-   "metadata": {[m
[31m-    "colab": {[m
[31m-     "base_uri": "https://localhost:8080/",[m
[31m-     "height": 542[m
     },[m
[31m-    "id": "rVL0iL4p6shS",[m
[31m-    "outputId": "1cda37b6-f07a-4eb4-e29c-3de30bc0207c"[m
[31m-   },[m
[31m-   "outputs": [[m
     {[m
[31m-     "data": {[m
[31m-      "text/html": [[m
[31m-       "<html>\n",[m
[31m-       "<head><meta charset=\"utf-8\" /></head>\n",[m
[31m-       "<body>\n",[m
[31m-       "    <div>            <script src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG\"></script><script type=\"text/javascript\">if (window.MathJax && window.MathJax.Hub && window.MathJax.Hub.Config) {window.MathJax.Hub.Config({SVG: {font: \"STIX-Web\"}});}</script>                <script type=\"text/javascript\">window.PlotlyConfig = {MathJaxConfig: 'local'};</script>\n",[m
[31m-       "        <script src=\"https://cdn.plot.ly/plotly-2.18.2.min.js\"></script>                <div id=\"2194bb13-ea21-42cb-bcb0-6c4a19275dcd\" class=\"plotly-graph-div\" style=\"height:525px; width:100%;\"></div>            <script type=\"text/javascript\">                                    window.PLOTLYENV=window.PLOTLYENV || {};                                    if (document.getElementById(\"2194bb13-ea21-42cb-bcb0-6c4a19275dcd\")) {                    Plotly.newPlot(                        \"2194bb13-ea21-42cb-bcb0-6c4a19275dcd\",                        [{\"alignmentgroup\":\"True\",\"box\":{\"visible\":true},\"hovertemplate\":\"day=Sun<br>sex=%{x}<br>total_bill=%{y}<extra></extra>\",\"legendgroup\":\"Sun\",\"marker\":{\"color\":\"#636efa\"},\"name\":\"Sun\",\"offsetgroup\":\"Sun\",\"orientation\":\"v\",\"points\":\"all\",\"scalegroup\":\"True\",\"showlegend\":true,\"x\":[\"Female\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Female\",\"Male\",\"Female\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Female\",\"Male\",\"Male\"],\"x0\":\" \",\"xaxis\":\"x\",\"y\":[16.99,10.34,21.01,23.68,24.59,25.29,8.77,26.88,15.04,14.78,10.27,35.26,15.42,18.43,14.83,21.58,10.33,16.29,16.97,17.46,13.94,9.68,30.4,18.29,22.23,32.4,28.55,18.04,12.54,10.29,34.81,9.94,25.56,19.49,38.07,23.95,25.71,17.31,29.93,14.07,13.13,17.26,24.55,19.77,29.85,48.17,25.0,13.39,16.49,21.5,12.66,16.21,13.81,17.51,24.52,20.76,31.71,7.25,31.85,16.82,32.9,17.89,14.48,9.6,34.63,34.65,23.33,45.35,23.17,40.55,20.69,20.9,30.46,18.15,23.1,15.69],\"y0\":\" \",\"yaxis\":\"y\",\"type\":\"violin\"},{\"alignmentgroup\":\"True\",\"box\":{\"visible\":true},\"hovertemplate\":\"day=Sat<br>sex=%{x}<br>total_bill=%{y}<extra></extra>\",\"legendgroup\":\"Sat\",\"marker\":{\"color\":\"#EF553B\"},\"name\":\"Sat\",\"offsetgroup\":\"Sat\",\"orientation\":\"v\",\"points\":\"all\",\"scalegroup\":\"True\",\"showlegend\":true,\"x\":[\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Female\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Female\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Female\",\"Male\",\"Male\"],\"x0\":\" \",\"xaxis\":\"x\",\"y\":[20.65,17.92,20.29,15.77,39.42,19.82,17.81,13.37,12.69,21.7,19.65,9.55,18.35,15.06,20.69,17.78,24.06,16.31,16.93,18.69,31.27,16.04,38.01,26.41,11.24,48.27,20.29,13.81,11.02,18.29,17.59,20.08,16.45,3.07,20.23,15.01,12.02,17.07,26.86,25.28,14.73,10.51,17.92,44.3,22.42,20.92,15.36,20.49,25.21,18.24,14.31,14.0,7.25,10.59,10.63,50.81,15.81,26.59,38.73,24.27,12.76,30.06,25.89,48.33,13.27,28.17,12.9,28.15,11.59,7.74,30.14,20.45,13.28,22.12,24.01,15.69,11.61,10.77,15.53,10.07,12.6,32.83,35.83,29.03,27.18,22.67,17.82],\"y0\":\" \",\"yaxis\":\"y\",\"type\":\"violin\"},{\"alignmentgroup\":\"True\",\"box\":{\"visible\":true},\"hovertemplate\":\"day=Thur<br>sex=%{x}<br>total_bill=%{y}<extra></extra>\",\"legendgroup\":\"Thur\",\"marker\":{\"color\":\"#00cc96\"},\"name\":\"Thur\",\"offsetgroup\":\"Thur\",\"orientation\":\"v\",\"points\":\"all\",\"scalegroup\":\"True\",\"showlegend\":true,\"x\":[\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Male\",\"Female\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Female\",\"Female\",\"Female\",\"Female\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Female\",\"Female\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Male\",\"Female\",\"Female\"],\"x0\":\" \",\"xaxis\":\"x\",\"y\":[27.2,22.76,17.29,19.44,16.66,10.07,32.68,15.98,34.83,13.03,18.28,24.71,21.16,10.65,12.43,24.08,11.69,13.42,14.26,15.95,12.48,29.8,8.52,14.52,11.38,22.82,19.08,20.27,11.17,12.26,18.26,8.51,10.33,14.15,16.0,13.16,17.47,34.3,41.19,27.05,16.43,8.35,18.64,11.87,9.78,7.51,19.81,28.44,15.48,16.58,7.56,10.34,43.11,13.0,13.51,18.71,12.74,13.0,16.4,20.53,16.47,18.78],\"y0\":\" \",\"yaxis\":\"y\",\"type\":\"violin\"},{\"alignmentgroup\":\"True\",\"box\":{\"visible\":true},\"hovertemplate\":\"day=Fri<br>sex=%{x}<br>total_bill=%{y}<extra></extra>\",\"legendgroup\":\"Fri\",\"marker\":{\"color\":\"#ab63fa\"},\"name\":\"Fri\",\"offsetgroup\":\"Fri\",\"orientation\":\"v\",\"points\":\"all\",\"scalegroup\":\"True\",\"showlegend\":true,\"x\":[\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Female\",\"Male\",\"Female\",\"Male\",\"Female\",\"Female\"],\"x0\":\" \",\"xaxis\":\"x\",\"y\":[28.97,22.49,5.75,16.32,22.75,40.17,27.28,12.03,21.01,12.46,11.35,15.38,12.16,13.42,8.58,15.98,13.42,16.27,10.09],\"y0\":\" \",\"yaxis\":\"y\",\"type\":\"violin\"}],                        {\"template\":{\"data\":{\"histogram2dcontour\":[{\"type\":\"histogram2dcontour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"choropleth\":[{\"type\":\"choropleth\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"histogram2d\":[{\"type\":\"histogram2d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmap\":[{\"type\":\"heatmap\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmapgl\":[{\"type\":\"heatmapgl\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"contourcarpet\":[{\"type\":\"contourcarpet\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"contour\":[{\"type\":\"contour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"surface\":[{\"type\":\"surface\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"mesh3d\":[{\"type\":\"mesh3d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"scatter\":[{\"fillpattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2},\"type\":\"scatter\"}],\"parcoords\":[{\"type\":\"parcoords\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolargl\":[{\"type\":\"scatterpolargl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"bar\":[{\"error_x\":{\"color\":\"#2a3f5f\"},\"error_y\":{\"color\":\"#2a3f5f\"},\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"bar\"}],\"scattergeo\":[{\"type\":\"scattergeo\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolar\":[{\"type\":\"scatterpolar\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"histogram\":[{\"marker\":{\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"histogram\"}],\"scattergl\":[{\"type\":\"scattergl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatter3d\":[{\"type\":\"scatter3d\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattermapbox\":[{\"type\":\"scattermapbox\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterternary\":[{\"type\":\"scatterternary\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattercarpet\":[{\"type\":\"scattercarpet\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"carpet\":[{\"aaxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"baxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"type\":\"carpet\"}],\"table\":[{\"cells\":{\"fill\":{\"color\":\"#EBF0F8\"},\"line\":{\"color\":\"white\"}},\"header\":{\"fill\":{\"color\":\"#C8D4E3\"},\"line\":{\"color\":\"white\"}},\"type\":\"table\"}],\"barpolar\":[{\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"barpolar\"}],\"pie\":[{\"automargin\":true,\"type\":\"pie\"}]},\"layout\":{\"autotypenumbers\":\"strict\",\"colorway\":[\"#636efa\",\"#EF553B\",\"#00cc96\",\"#ab63fa\",\"#FFA15A\",\"#19d3f3\",\"#FF6692\",\"#B6E880\",\"#FF97FF\",\"#FECB52\"],\"font\":{\"color\":\"#2a3f5f\"},\"hovermode\":\"closest\",\"hoverlabel\":{\"align\":\"left\"},\"paper_bgcolor\":\"white\",\"plot_bgcolor\":\"#E5ECF6\",\"polar\":{\"bgcolor\":\"#E5ECF6\",\"angularaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"radialaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"ternary\":{\"bgcolor\":\"#E5ECF6\",\"aaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"baxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"caxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"coloraxis\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"colorscale\":{\"sequential\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"sequentialminus\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"diverging\":[[0,\"#8e0152\"],[0.1,\"#c51b7d\"],[0.2,\"#de77ae\"],[0.3,\"#f1b6da\"],[0.4,\"#fde0ef\"],[0.5,\"#f7f7f7\"],[0.6,\"#e6f5d0\"],[0.7,\"#b8e186\"],[0.8,\"#7fbc41\"],[0.9,\"#4d9221\"],[1,\"#276419\"]]},\"xaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"yaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"scene\":{\"xaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"yaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"zaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2}},\"shapedefaults\":{\"line\":{\"color\":\"#2a3f5f\"}},\"annotationdefaults\":{\"arrowcolor\":\"#2a3f5f\",\"arrowhead\":0,\"arrowwidth\":1},\"geo\":{\"bgcolor\":\"white\",\"landcolor\":\"#E5ECF6\",\"subunitcolor\":\"white\",\"showland\":true,\"showlakes\":true,\"lakecolor\":\"white\"},\"title\":{\"x\":0.05},\"mapbox\":{\"style\":\"light\"}}},\"xaxis\":{\"anchor\":\"y\",\"domain\":[0.0,1.0],\"title\":{\"text\":\"sex\"}},\"yaxis\":{\"anchor\":\"x\",\"domain\":[0.0,1.0],\"title\":{\"text\":\"total_bill\"}},\"legend\":{\"title\":{\"text\":\"day\"},\"tracegroupgap\":0},\"margin\":{\"t\":60},\"violinmode\":\"group\"},                        {\"responsive\": true}                    ).then(function(){\n",[m
[31m-       "                            \n",[m
[31m-       "var gd = document.getElementById('2194bb13-ea21-42cb-bcb0-6c4a19275dcd');\n",[m
[31m-       "var x = new MutationObserver(function (mutations, observer) {{\n",[m
[31m-       "        var display = window.getComputedStyle(gd).display;\n",[m
[31m-       "        if (!display || display === 'none') {{\n",[m
[31m-       "            console.log([gd, 'removed!']);\n",[m
[31m-       "            Plotly.purge(gd);\n",[m
[31m-       "            observer.disconnect();\n",[m
[31m-       "        }}\n",[m
[31m-       "}});\n",[m
[31m-       "\n",[m
[31m-       "// Listen for the removal of the full notebook cells\n",[m
[31m-       "var notebookContainer = gd.closest('#notebook-container');\n",[m
[31m-       "if (notebookContainer) {{\n",[m
[31m-       "    x.observe(notebookContainer, {childList: true});\n",[m
[31m-       "}}\n",[m
[31m-       "\n",[m
[31m-       "// Listen for the clearing of the current output cell\n",[m
[31m-       "var outputEl = gd.closest('.output');\n",[m
[31m-       "if (outputEl) {{\n",[m
[31m-       "    x.observe(outputEl, {childList: true});\n",[m
[31m-       "}}\n",[m
[31m-       "\n",[m
[31m-       "                        })                };                            </script>        </div>\n",[m
[31m-       "</body>\n",[m
[31m-       "</html>"[m
[32m+[m[32m      "cell_type": "code",[m
[32m+[m[32m      "source": [[m
[32m+[m[32m        "from ipywidgets.widgets.widget_int import Color\n",[m
[32m+[m[32m        "# Q3. Using the tips dataset in the Plotly library, Plot a histogram for x= \"sex\" and y=\"total_bill\" column in\n",[m
[32m+[m[32m        "# the tips dataset. Also, use the \"smoker\" column with the pattern_shape parameter and the \"day\"\n",[m
[32m+[m[32m        "# column with the color parameter.\n",[m
[32m+[m[32m        "import plotly.express as px\n",[m
[32m+[m[32m        "import seaborn as sb\n",[m
[32m+[m[32m        "\n",[m
[32m+[m[32m        "tips = sb.load_dataset('tips')\n",[m
[32m+[m[32m        "fig = px.violin(tips, x='sex', y='total_bill', color='day', box=True, points=\"all\")\n",[m
[32m+[m[32m        "fig.show()\n"[m
[32m+[m[32m      ],[m
[32m+[m[32m      "metadata": {[m
[32m+[m[32m        "colab": {[m
[32m+[m[32m          "base_uri": "https://localhost:8080/",[m
[32m+[m[32m          "height": 542[m
[32m+[m[32m        },[m
[32m+[m[32m        "id": "rVL0iL4p6shS",[m
[32m+[m[32m        "outputId": "1cda37b6-f07a-4eb4-e29c-3de30bc0207c"[m
[32m+[m[32m      },[m
[32m+[m[32m      "execution_count": 15,[m
[32m+[m[32m      "outputs": [[m
[32m+[m[32m        {[m
[32m+[m[32m          "output_type": "display_data",[m
[32m+[m[32m          "data": {[m
[32m+[m[32m            "text/html": [[m
[32m+[m[32m              "<html>\n",[m
[32m+[m[32m              "<head><meta charset=\"utf-8\" /></head>\n",[m
[32m+[m[32m              "<body>\n",[m
[32m+[m[32m              "    <div>            <script src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG\"></script><script type=\"text/javascript\">if (window.MathJax && window.MathJax.Hub && window.MathJax.Hub.Config) {window.MathJax.Hub.Config({SVG: {font: \"STIX-Web\"}});}</script>                <script type=\"text/javascript\">window.PlotlyConfig = {MathJaxConfig: 'local'};</script>\n",[m
[32m+[m[32m              "        <script src=\"https://cdn.plot.ly/plotly-2.18.2.min.js\"></script>                <div id=\"2194bb13-ea21-42cb-bcb0-6c4a19275dcd\" class=\"plotly-graph-div\" style=\"height:525px; width:100%;\"></div>            <script type=\"text/javascript\">                                    window.PLOTLYENV=window.PLOTLYENV || {};                                    if (document.getElementById(\"2194bb13-ea21-42cb-bcb0-6c4a19275dcd\")) {                    Plotly.newPlot(                        \"2194bb13-ea21-42cb-bcb0-6c4a19275dcd\",                        [{\"alignmentgroup\":\"True\",\"box\":{\"visible\":true},\"hovertemplate\":\"day=Sun<br>sex=%{x}<br>total_bill=%{y}<extra></extra>\",\"legendgroup\":\"Sun\",\"marker\":{\"color\":\"#636efa\"},\"name\":\"Sun\",\"offsetgroup\":\"Sun\",\"orientation\":\"v\",\"points\":\"all\",\"scalegroup\":\"True\",\"showlegend\":true,\"x\":[\"Female\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Female\",\"Male\",\"Female\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Female\",\"Male\",\"Male\"],\"x0\":\" \",\"xaxis\":\"x\",\"y\":[16.99,10.34,21.01,23.68,24.59,25.29,8.77,26.88,15.04,14.78,10.27,35.26,15.42,18.43,14.83,21.58,10.33,16.29,16.97,17.46,13.94,9.68,30.4,18.29,22.23,32.4,28.55,18.04,12.54,10.29,34.81,9.94,25.56,19.49,38.07,23.95,25.71,17.31,29.93,14.07,13.13,17.26,24.55,19.77,29.85,48.17,25.0,13.39,16.49,21.5,12.66,16.21,13.81,17.51,24.52,20.76,31.71,7.25,31.85,16.82,32.9,17.89,14.48,9.6,34.63,34.65,23.33,45.35,23.17,40.55,20.69,20.9,30.46,18.15,23.1,15.69],\"y0\":\" \",\"yaxis\":\"y\",\"type\":\"violin\"},{\"alignmentgroup\":\"True\",\"box\":{\"visible\":true},\"hovertemplate\":\"day=Sat<br>sex=%{x}<br>total_bill=%{y}<extra></extra>\",\"legendgroup\":\"Sat\",\"marker\":{\"color\":\"#EF553B\"},\"name\":\"Sat\",\"offsetgroup\":\"Sat\",\"orientation\":\"v\",\"points\":\"all\",\"scalegroup\":\"True\",\"showlegend\":true,\"x\":[\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Female\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Female\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Female\",\"Male\",\"Male\"],\"x0\":\" \",\"xaxis\":\"x\",\"y\":[20.65,17.92,20.29,15.77,39.42,19.82,17.81,13.37,12.69,21.7,19.65,9.55,18.35,15.06,20.69,17.78,24.06,16.31,16.93,18.69,31.27,16.04,38.01,26.41,11.24,48.27,20.29,13.81,11.02,18.29,17.59,20.08,16.45,3.07,20.23,15.01,12.02,17.07,26.86,25.28,14.73,10.51,17.92,44.3,22.42,20.92,15.36,20.49,25.21,18.24,14.31,14.0,7.25,10.59,10.63,50.81,15.81,26.59,38.73,24.27,12.76,30.06,25.89,48.33,13.27,28.17,12.9,28.15,11.59,7.74,30.14,20.45,13.28,22.12,24.01,15.69,11.61,10.77,15.53,10.07,12.6,32.83,35.83,29.03,27.18,22.67,17.82],\"y0\":\" \",\"yaxis\":\"y\",\"type\":\"violin\"},{\"alignmentgroup\":\"True\",\"box\":{\"visible\":true},\"hovertemplate\":\"day=Thur<br>sex=%{x}<br>total_bill=%{y}<extra></extra>\",\"legendgroup\":\"Thur\",\"marker\":{\"color\":\"#00cc96\"},\"name\":\"Thur\",\"offsetgroup\":\"Thur\",\"orientation\":\"v\",\"points\":\"all\",\"scalegroup\":\"True\",\"showlegend\":true,\"x\":[\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Male\",\"Female\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Female\",\"Female\",\"Female\",\"Female\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Female\",\"Female\",\"Male\",\"Male\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Male\",\"Female\",\"Female\"],\"x0\":\" \",\"xaxis\":\"x\",\"y\":[27.2,22.76,17.29,19.44,16.66,10.07,32.68,15.98,34.83,13.03,18.28,24.71,21.16,10.65,12.43,24.08,11.69,13.42,14.26,15.95,12.48,29.8,8.52,14.52,11.38,22.82,19.08,20.27,11.17,12.26,18.26,8.51,10.33,14.15,16.0,13.16,17.47,34.3,41.19,27.05,16.43,8.35,18.64,11.87,9.78,7.51,19.81,28.44,15.48,16.58,7.56,10.34,43.11,13.0,13.51,18.71,12.74,13.0,16.4,20.53,16.47,18.78],\"y0\":\" \",\"yaxis\":\"y\",\"type\":\"violin\"},{\"alignmentgroup\":\"True\",\"box\":{\"visible\":true},\"hovertemplate\":\"day=Fri<br>sex=%{x}<br>total_bill=%{y}<extra></extra>\",\"legendgroup\":\"Fri\",\"marker\":{\"color\":\"#ab63fa\"},\"name\":\"Fri\",\"offsetgroup\":\"Fri\",\"orientation\":\"v\",\"points\":\"all\",\"scalegroup\":\"True\",\"showlegend\":true,\"x\":[\"Male\",\"Male\",\"Female\",\"Female\",\"Female\",\"Male\",\"Male\",\"Male\",\"Male\",\"Male\",\"Female\",\"Female\",\"Male\",\"Female\",\"Male\",\"Female\",\"Male\",\"Female\",\"Female\"],\"x0\":\" \",\"xaxis\":\"x\",\"y\":[28.97,22.49,5.75,16.32,22.75,40.17,27.28,12.03,21.01,12.46,11.35,15.38,12.16,13.42,8.58,15.98,13.42,16.27,10.09],\"y0\":\" \",\"yaxis\":\"y\",\"type\":\"violin\"}],                        {\"template\":{\"data\":{\"histogram2dcontour\":[{\"type\":\"histogram2dcontour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"choropleth\":[{\"type\":\"choropleth\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"histogram2d\":[{\"type\":\"histogram2d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmap\":[{\"type\":\"heatmap\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmapgl\":[{\"type\":\"heatmapgl\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"contourcarpet\":[{\"type\":\"contourcarpet\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"contour\":[{\"type\":\"contour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"surface\":[{\"type\":\"surface\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"mesh3d\":[{\"type\":\"mesh3d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"scatter\":[{\"fillpattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2},\"type\":\"scatter\"}],\"parcoords\":[{\"type\":\"parcoords\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolargl\":[{\"type\":\"scatterpolargl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"bar\":[{\"error_x\":{\"color\":\"#2a3f5f\"},\"error_y\":{\"color\":\"#2a3f5f\"},\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"bar\"}],\"scattergeo\":[{\"type\":\"scattergeo\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolar\":[{\"type\":\"scatterpolar\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"histogram\":[{\"marker\":{\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"histogram\"}],\"scattergl\":[{\"type\":\"scattergl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatter3d\":[{\"type\":\"scatter3d\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattermapbox\":[{\"type\":\"scattermapbox\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterternary\":[{\"type\":\"scatterternary\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattercarpet\":[{\"type\":\"scattercarpet\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"carpet\":[{\"aaxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"baxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"type\":\"carpet\"}],\"table\":[{\"cells\":{\"fill\":{\"color\":\"#EBF0F8\"},\"line\":{\"color\":\"white\"}},\"header\":{\"fill\":{\"color\":\"#C8D4E3\"},\"line\":{\"color\":\"white\"}},\"type\":\"table\"}],\"barpolar\":[{\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"barpolar\"}],\"pie\":[{\"automargin\":true,\"type\":\"pie\"}]},\"layout\":{\"autotypenumbers\":\"strict\",\"colorway\":[\"#636efa\",\"#EF553B\",\"#00cc96\",\"#ab63fa\",\"#FFA15A\",\"#19d3f3\",\"#FF6692\",\"#B6E880\",\"#FF97FF\",\"#FECB52\"],\"font\":{\"color\":\"#2a3f5f\"},\"hovermode\":\"closest\",\"hoverlabel\":{\"align\":\"left\"},\"paper_bgcolor\":\"white\",\"plot_bgcolor\":\"#E5ECF6\",\"polar\":{\"bgcolor\":\"#E5ECF6\",\"angularaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"radialaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"ternary\":{\"bgcolor\":\"#E5ECF6\",\"aaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"baxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"caxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"coloraxis\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"colorscale\":{\"sequential\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"sequentialminus\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"diverging\":[[0,\"#8e0152\"],[0.1,\"#c51b7d\"],[0.2,\"#de77ae\"],[0.3,\"#f1b6da\"],[0.4,\"#fde0ef\"],[0.5,\"#f7f7f7\"],[0.6,\"#e6f5d0\"],[0.7,\"#b8e186\"],[0.8,\"#7fbc41\"],[0.9,\"#4d9221\"],[1,\"#276419\"]]},\"xaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"yaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"scene\":{\"xaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"yaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"zaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2}},\"shapedefaults\":{\"line\":{\"color\":\"#2a3f5f\"}},\"annotationdefaults\":{\"arrowcolor\":\"#2a3f5f\",\"arrowhead\":0,\"arrowwidth\":1},\"geo\":{\"bgcolor\":\"white\",\"landcolor\":\"#E5ECF6\",\"subunitcolor\":\"white\",\"showland\":true,\"showlakes\":true,\"lakecolor\":\"white\"},\"title\":{\"x\":0.05},\"mapbox\":{\"style\":\"light\"}}},\"xaxis\":{\"anchor\":\"y\",\"domain\":[0.0,1.0],\"title\":{\"text\":\"sex\"}},\"yaxis\":{\"anchor\":\"x\",\"domain\":[0.0,1.0],\"title\":{\"text\":\"total_bill\"}},\"legend\":{\"title\":{\"text\":\"day\"},\"tracegroupgap\":0},\"margin\":{\"t\":60},\"violinmode\":\"group\"},                        {\"responsive\": true}                    ).then(function(){\n",[m
[32m+[m[32m              "                            \n",[m
[32m+[m[32m              "var gd = document.getElementById('2194bb13-ea21-42cb-bcb0-6c4a19275dcd');\n",[m
[32m+[m[32m              "var x = new MutationObserver(function (mutations, observer) {{\n",[m
[32m+[m[32m              "        var display = window.getComputedStyle(gd).display;\n",[m
[32m+[m[32m              "        if (!display || display === 'none') {{\n",[m
[32m+[m[32m              "            console.log([gd, 'removed!']);\n",[m
[32m+[m[32m              "            Plotly.purge(gd);\n",[m
[32m+[m[32m              "            observer.disconnect();\n",[m
[32m+[m[32m              "        }}\n",[m
[32m+[m[32m              "}});\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "// Listen for the removal of the full notebook cells\n",[m
[32m+[m[32m              "var notebookContainer = gd.closest('#notebook-container');\n",[m
[32m+[m[32m              "if (notebookContainer) {{\n",[m
[32m+[m[32m              "    x.observe(notebookContainer, {childList: true});\n",[m
[32m+[m[32m              "}}\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "// Listen for the clearing of the current output cell\n",[m
[32m+[m[32m              "var outputEl = gd.closest('.output');\n",[m
[32m+[m[32m              "if (outputEl) {{\n",[m
[32m+[m[32m              "    x.observe(outputEl, {childList: true});\n",[m
[32m+[m[32m              "}}\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "                        })                };                            </script>        </div>\n",[m
[32m+[m[32m              "</body>\n",[m
[32m+[m[32m              "</html>"[m
[32m+[m[32m            ][m
[32m+[m[32m          },[m
[32m+[m[32m          "metadata": {}[m
[32m+[m[32m        }[m
       ][m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    }[m
[31m-   ],[m
[31m-   "source": [[m
[31m-    "from ipywidgets.widgets.widget_int import Color\n",[m
[31m-    "# Q3. Using the tips dataset in the Plotly library, Plot a histogram for x= \"sex\" and y=\"total_bill\" column in\n",[m
[31m-    "# the tips dataset. Also, use the \"smoker\" column with the pattern_shape parameter and the \"day\"\n",[m
[31m-    "# column with the color parameter.\n",[m
[31m-    "import plotly.express as px\n",[m
[31m-    "import seaborn as sb\n",[m
[31m-    "\n",[m
[31m-    "tips = sb.load_dataset('tips')\n",[m
[31m-    "fig = px.violin(tips, x='sex', y='total_bill', color='day', box=True, points=\"all\")\n",[m
[31m-    "fig.show()\n"[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": 16,[m
[31m-   "metadata": {[m
[31m-    "colab": {[m
[31m-     "base_uri": "https://localhost:8080/",[m
[31m-     "height": 542[m
     },[m
[31m-    "id": "bhNpnTCg6veV",[m
[31m-    "outputId": "baac743a-7a31-4794-9bf2-50fbcb2087d5"[m
[31m-   },[m
[31m-   "outputs": [[m
     {[m
[31m-     "data": {[m
[31m-      "text/html": [[m
[31m-       "<html>\n",[m
[31m-       "<head><meta charset=\"utf-8\" /></head>\n",[m
[31m-       "<body>\n",[m
[31m-       "    <div>            <script src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG\"></script><script type=\"text/javascript\">if (window.MathJax && window.MathJax.Hub && window.MathJax.Hub.Config) {window.MathJax.Hub.Config({SVG: {font: \"STIX-Web\"}});}</script>                <script type=\"text/javascript\">window.PlotlyConfig = {MathJaxConfig: 'local'};</script>\n",[m
[31m-       "        <script src=\"https://cdn.plot.ly/plotly-2.18.2.min.js\"></script>                <div id=\"383e9611-935f-44c6-a1bd-e12381a71109\" class=\"plotly-graph-div\" style=\"height:525px; width:100%;\"></div>            <script type=\"text/javascript\">                                    window.PLOTLYENV=window.PLOTLYENV || {};                                    if (document.getElementById(\"383e9611-935f-44c6-a1bd-e12381a71109\")) {                    Plotly.newPlot(                        \"383e9611-935f-44c6-a1bd-e12381a71109\",                        [{\"dimensions\":[{\"axis\":{\"matches\":true},\"label\":\"sepal_length\",\"values\":[5.1,4.9,4.7,4.6,5.0,5.4,4.6,5.0,4.4,4.9,5.4,4.8,4.8,4.3,5.8,5.7,5.4,5.1,5.7,5.1,5.4,5.1,4.6,5.1,4.8,5.0,5.0,5.2,5.2,4.7,4.8,5.4,5.2,5.5,4.9,5.0,5.5,4.9,4.4,5.1,5.0,4.5,4.4,5.0,5.1,4.8,5.1,4.6,5.3,5.0]},{\"axis\":{\"matches\":true},\"label\":\"sepal_width\",\"values\":[3.5,3.0,3.2,3.1,3.6,3.9,3.4,3.4,2.9,3.1,3.7,3.4,3.0,3.0,4.0,4.4,3.9,3.5,3.8,3.8,3.4,3.7,3.6,3.3,3.4,3.0,3.4,3.5,3.4,3.2,3.1,3.4,4.1,4.2,3.1,3.2,3.5,3.1,3.0,3.4,3.5,2.3,3.2,3.5,3.8,3.0,3.8,3.2,3.7,3.3]},{\"axis\":{\"matches\":true},\"label\":\"petal_length\",\"values\":[1.4,1.4,1.3,1.5,1.4,1.7,1.4,1.5,1.4,1.5,1.5,1.6,1.4,1.1,1.2,1.5,1.3,1.4,1.7,1.5,1.7,1.5,1.0,1.7,1.9,1.6,1.6,1.5,1.4,1.6,1.6,1.5,1.5,1.4,1.5,1.2,1.3,1.5,1.3,1.5,1.3,1.3,1.3,1.6,1.9,1.4,1.6,1.4,1.5,1.4]},{\"axis\":{\"matches\":true},\"label\":\"petal_width\",\"values\":[0.2,0.2,0.2,0.2,0.2,0.4,0.3,0.2,0.2,0.1,0.2,0.2,0.1,0.1,0.2,0.4,0.4,0.3,0.3,0.3,0.2,0.4,0.2,0.5,0.2,0.2,0.4,0.2,0.2,0.2,0.2,0.4,0.1,0.2,0.1,0.2,0.2,0.1,0.2,0.2,0.3,0.3,0.2,0.6,0.4,0.3,0.2,0.2,0.2,0.2]}],\"hovertemplate\":\"species=setosa<br>%{xaxis.title.text}=%{x}<br>%{yaxis.title.text}=%{y}<extra></extra>\",\"legendgroup\":\"setosa\",\"marker\":{\"color\":\"#636efa\",\"symbol\":\"circle\"},\"name\":\"setosa\",\"showlegend\":true,\"type\":\"splom\"},{\"dimensions\":[{\"axis\":{\"matches\":true},\"label\":\"sepal_length\",\"values\":[7.0,6.4,6.9,5.5,6.5,5.7,6.3,4.9,6.6,5.2,5.0,5.9,6.0,6.1,5.6,6.7,5.6,5.8,6.2,5.6,5.9,6.1,6.3,6.1,6.4,6.6,6.8,6.7,6.0,5.7,5.5,5.5,5.8,6.0,5.4,6.0,6.7,6.3,5.6,5.5,5.5,6.1,5.8,5.0,5.6,5.7,5.7,6.2,5.1,5.7]},{\"axis\":{\"matches\":true},\"label\":\"sepal_width\",\"values\":[3.2,3.2,3.1,2.3,2.8,2.8,3.3,2.4,2.9,2.7,2.0,3.0,2.2,2.9,2.9,3.1,3.0,2.7,2.2,2.5,3.2,2.8,2.5,2.8,2.9,3.0,2.8,3.0,2.9,2.6,2.4,2.4,2.7,2.7,3.0,3.4,3.1,2.3,3.0,2.5,2.6,3.0,2.6,2.3,2.7,3.0,2.9,2.9,2.5,2.8]},{\"axis\":{\"matches\":true},\"label\":\"petal_length\",\"values\":[4.7,4.5,4.9,4.0,4.6,4.5,4.7,3.3,4.6,3.9,3.5,4.2,4.0,4.7,3.6,4.4,4.5,4.1,4.5,3.9,4.8,4.0,4.9,4.7,4.3,4.4,4.8,5.0,4.5,3.5,3.8,3.7,3.9,5.1,4.5,4.5,4.7,4.4,4.1,4.0,4.4,4.6,4.0,3.3,4.2,4.2,4.2,4.3,3.0,4.1]},{\"axis\":{\"matches\":true},\"label\":\"petal_width\",\"values\":[1.4,1.5,1.5,1.3,1.5,1.3,1.6,1.0,1.3,1.4,1.0,1.5,1.0,1.4,1.3,1.4,1.5,1.0,1.5,1.1,1.8,1.3,1.5,1.2,1.3,1.4,1.4,1.7,1.5,1.0,1.1,1.0,1.2,1.6,1.5,1.6,1.5,1.3,1.3,1.3,1.2,1.4,1.2,1.0,1.3,1.2,1.3,1.3,1.1,1.3]}],\"hovertemplate\":\"species=versicolor<br>%{xaxis.title.text}=%{x}<br>%{yaxis.title.text}=%{y}<extra></extra>\",\"legendgroup\":\"versicolor\",\"marker\":{\"color\":\"#EF553B\",\"symbol\":\"circle\"},\"name\":\"versicolor\",\"showlegend\":true,\"type\":\"splom\"},{\"dimensions\":[{\"axis\":{\"matches\":true},\"label\":\"sepal_length\",\"values\":[6.3,5.8,7.1,6.3,6.5,7.6,4.9,7.3,6.7,7.2,6.5,6.4,6.8,5.7,5.8,6.4,6.5,7.7,7.7,6.0,6.9,5.6,7.7,6.3,6.7,7.2,6.2,6.1,6.4,7.2,7.4,7.9,6.4,6.3,6.1,7.7,6.3,6.4,6.0,6.9,6.7,6.9,5.8,6.8,6.7,6.7,6.3,6.5,6.2,5.9]},{\"axis\":{\"matches\":true},\"label\":\"sepal_width\",\"values\":[3.3,2.7,3.0,2.9,3.0,3.0,2.5,2.9,2.5,3.6,3.2,2.7,3.0,2.5,2.8,3.2,3.0,3.8,2.6,2.2,3.2,2.8,2.8,2.7,3.3,3.2,2.8,3.0,2.8,3.0,2.8,3.8,2.8,2.8,2.6,3.0,3.4,3.1,3.0,3.1,3.1,3.1,2.7,3.2,3.3,3.0,2.5,3.0,3.4,3.0]},{\"axis\":{\"matches\":true},\"label\":\"petal_length\",\"values\":[6.0,5.1,5.9,5.6,5.8,6.6,4.5,6.3,5.8,6.1,5.1,5.3,5.5,5.0,5.1,5.3,5.5,6.7,6.9,5.0,5.7,4.9,6.7,4.9,5.7,6.0,4.8,4.9,5.6,5.8,6.1,6.4,5.6,5.1,5.6,6.1,5.6,5.5,4.8,5.4,5.6,5.1,5.1,5.9,5.7,5.2,5.0,5.2,5.4,5.1]},{\"axis\":{\"matches\":true},\"label\":\"petal_width\",\"values\":[2.5,1.9,2.1,1.8,2.2,2.1,1.7,1.8,1.8,2.5,2.0,1.9,2.1,2.0,2.4,2.3,1.8,2.2,2.3,1.5,2.3,2.0,2.0,1.8,2.1,1.8,1.8,1.8,2.1,1.6,1.9,2.0,2.2,1.5,1.4,2.3,2.4,1.8,1.8,2.1,2.4,2.3,1.9,2.3,2.5,2.3,1.9,2.0,2.3,1.8]}],\"hovertemplate\":\"species=virginica<br>%{xaxis.title.text}=%{x}<br>%{yaxis.title.text}=%{y}<extra></extra>\",\"legendgroup\":\"virginica\",\"marker\":{\"color\":\"#00cc96\",\"symbol\":\"circle\"},\"name\":\"virginica\",\"showlegend\":true,\"type\":\"splom\"}],                        {\"template\":{\"data\":{\"histogram2dcontour\":[{\"type\":\"histogram2dcontour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"choropleth\":[{\"type\":\"choropleth\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"histogram2d\":[{\"type\":\"histogram2d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmap\":[{\"type\":\"heatmap\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmapgl\":[{\"type\":\"heatmapgl\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"contourcarpet\":[{\"type\":\"contourcarpet\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"contour\":[{\"type\":\"contour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"surface\":[{\"type\":\"surface\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"mesh3d\":[{\"type\":\"mesh3d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"scatter\":[{\"fillpattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2},\"type\":\"scatter\"}],\"parcoords\":[{\"type\":\"parcoords\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolargl\":[{\"type\":\"scatterpolargl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"bar\":[{\"error_x\":{\"color\":\"#2a3f5f\"},\"error_y\":{\"color\":\"#2a3f5f\"},\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"bar\"}],\"scattergeo\":[{\"type\":\"scattergeo\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolar\":[{\"type\":\"scatterpolar\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"histogram\":[{\"marker\":{\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"histogram\"}],\"scattergl\":[{\"type\":\"scattergl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatter3d\":[{\"type\":\"scatter3d\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattermapbox\":[{\"type\":\"scattermapbox\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterternary\":[{\"type\":\"scatterternary\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattercarpet\":[{\"type\":\"scattercarpet\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"carpet\":[{\"aaxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"baxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"type\":\"carpet\"}],\"table\":[{\"cells\":{\"fill\":{\"color\":\"#EBF0F8\"},\"line\":{\"color\":\"white\"}},\"header\":{\"fill\":{\"color\":\"#C8D4E3\"},\"line\":{\"color\":\"white\"}},\"type\":\"table\"}],\"barpolar\":[{\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"barpolar\"}],\"pie\":[{\"automargin\":true,\"type\":\"pie\"}]},\"layout\":{\"autotypenumbers\":\"strict\",\"colorway\":[\"#636efa\",\"#EF553B\",\"#00cc96\",\"#ab63fa\",\"#FFA15A\",\"#19d3f3\",\"#FF6692\",\"#B6E880\",\"#FF97FF\",\"#FECB52\"],\"font\":{\"color\":\"#2a3f5f\"},\"hovermode\":\"closest\",\"hoverlabel\":{\"align\":\"left\"},\"paper_bgcolor\":\"white\",\"plot_bgcolor\":\"#E5ECF6\",\"polar\":{\"bgcolor\":\"#E5ECF6\",\"angularaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"radialaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"ternary\":{\"bgcolor\":\"#E5ECF6\",\"aaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"baxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"caxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"coloraxis\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"colorscale\":{\"sequential\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"sequentialminus\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"diverging\":[[0,\"#8e0152\"],[0.1,\"#c51b7d\"],[0.2,\"#de77ae\"],[0.3,\"#f1b6da\"],[0.4,\"#fde0ef\"],[0.5,\"#f7f7f7\"],[0.6,\"#e6f5d0\"],[0.7,\"#b8e186\"],[0.8,\"#7fbc41\"],[0.9,\"#4d9221\"],[1,\"#276419\"]]},\"xaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"yaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"scene\":{\"xaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"yaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"zaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2}},\"shapedefaults\":{\"line\":{\"color\":\"#2a3f5f\"}},\"annotationdefaults\":{\"arrowcolor\":\"#2a3f5f\",\"arrowhead\":0,\"arrowwidth\":1},\"geo\":{\"bgcolor\":\"white\",\"landcolor\":\"#E5ECF6\",\"subunitcolor\":\"white\",\"showland\":true,\"showlakes\":true,\"lakecolor\":\"white\"},\"title\":{\"x\":0.05},\"mapbox\":{\"style\":\"light\"}}},\"legend\":{\"title\":{\"text\":\"species\"},\"tracegroupgap\":0},\"margin\":{\"t\":60},\"dragmode\":\"select\"},                        {\"responsive\": true}                    ).then(function(){\n",[m
[31m-       "                            \n",[m
[31m-       "var gd = document.getElementById('383e9611-935f-44c6-a1bd-e12381a71109');\n",[m
[31m-       "var x = new MutationObserver(function (mutations, observer) {{\n",[m
[31m-       "        var display = window.getComputedStyle(gd).display;\n",[m
[31m-       "        if (!display || display === 'none') {{\n",[m
[31m-       "            console.log([gd, 'removed!']);\n",[m
[31m-       "            Plotly.purge(gd);\n",[m
[31m-       "            observer.disconnect();\n",[m
[31m-       "        }}\n",[m
[31m-       "}});\n",[m
[31m-       "\n",[m
[31m-       "// Listen for the removal of the full notebook cells\n",[m
[31m-       "var notebookContainer = gd.closest('#notebook-container');\n",[m
[31m-       "if (notebookContainer) {{\n",[m
[31m-       "    x.observe(notebookContainer, {childList: true});\n",[m
[31m-       "}}\n",[m
[31m-       "\n",[m
[31m-       "// Listen for the clearing of the current output cell\n",[m
[31m-       "var outputEl = gd.closest('.output');\n",[m
[31m-       "if (outputEl) {{\n",[m
[31m-       "    x.observe(outputEl, {childList: true});\n",[m
[31m-       "}}\n",[m
[31m-       "\n",[m
[31m-       "                        })                };                            </script>        </div>\n",[m
[31m-       "</body>\n",[m
[31m-       "</html>"[m
[32m+[m[32m      "cell_type": "code",[m
[32m+[m[32m      "source": [[m
[32m+[m[32m        "# Q4. Using the iris dataset in the Plotly library, Plot a scatter matrix plot, using the \"species\" column for\n",[m
[32m+[m[32m        "# the color parameter.\n",[m
[32m+[m[32m        "# Note: Use \"sepal_length\", \"sepal_width\", \"petal_length\", \"petal_width\" columns only with the\n",[m
[32m+[m[32m        "# dimensions parameter.\n",[m
[32m+[m[32m        "import plotly.express as px\n",[m
[32m+[m[32m        "from sklearn.datasets import load_iris\n",[m
[32m+[m[32m        "\n",[m
[32m+[m[32m        "iris = load_iris()\n",[m
[32m+[m[32m        "df = px.data.iris()\n",[m
[32m+[m[32m        "\n",[m
[32m+[m[32m        "fig = px.scatter_matrix(df, dimensions=[\"sepal_length\", \"sepal_width\", \"petal_length\", \"petal_width\"], color=\"species\")\n",[m
[32m+[m[32m        "fig.show()\n"[m
[32m+[m[32m      ],[m
[32m+[m[32m      "metadata": {[m
[32m+[m[32m        "colab": {[m
[32m+[m[32m          "base_uri": "https://localhost:8080/",[m
[32m+[m[32m          "height": 542[m
[32m+[m[32m        },[m
[32m+[m[32m        "id": "bhNpnTCg6veV",[m
[32m+[m[32m        "outputId": "baac743a-7a31-4794-9bf2-50fbcb2087d5"[m
[32m+[m[32m      },[m
[32m+[m[32m      "execution_count": 16,[m
[32m+[m[32m      "outputs": [[m
[32m+[m[32m        {[m
[32m+[m[32m          "output_type": "display_data",[m
[32m+[m[32m          "data": {[m
[32m+[m[32m            "text/html": [[m
[32m+[m[32m              "<html>\n",[m
[32m+[m[32m              "<head><meta charset=\"utf-8\" /></head>\n",[m
[32m+[m[32m              "<body>\n",[m
[32m+[m[32m              "    <div>            <script src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG\"></script><script type=\"text/javascript\">if (window.MathJax && window.MathJax.Hub && window.MathJax.Hub.Config) {window.MathJax.Hub.Config({SVG: {font: \"STIX-Web\"}});}</script>                <script type=\"text/javascript\">window.PlotlyConfig = {MathJaxConfig: 'local'};</script>\n",[m
[32m+[m[32m              "        <script src=\"https://cdn.plot.ly/plotly-2.18.2.min.js\"></script>                <div id=\"383e9611-935f-44c6-a1bd-e12381a71109\" class=\"plotly-graph-div\" style=\"height:525px; width:100%;\"></div>            <script type=\"text/javascript\">                                    window.PLOTLYENV=window.PLOTLYENV || {};                                    if (document.getElementById(\"383e9611-935f-44c6-a1bd-e12381a71109\")) {                    Plotly.newPlot(                        \"383e9611-935f-44c6-a1bd-e12381a71109\",                        [{\"dimensions\":[{\"axis\":{\"matches\":true},\"label\":\"sepal_length\",\"values\":[5.1,4.9,4.7,4.6,5.0,5.4,4.6,5.0,4.4,4.9,5.4,4.8,4.8,4.3,5.8,5.7,5.4,5.1,5.7,5.1,5.4,5.1,4.6,5.1,4.8,5.0,5.0,5.2,5.2,4.7,4.8,5.4,5.2,5.5,4.9,5.0,5.5,4.9,4.4,5.1,5.0,4.5,4.4,5.0,5.1,4.8,5.1,4.6,5.3,5.0]},{\"axis\":{\"matches\":true},\"label\":\"sepal_width\",\"values\":[3.5,3.0,3.2,3.1,3.6,3.9,3.4,3.4,2.9,3.1,3.7,3.4,3.0,3.0,4.0,4.4,3.9,3.5,3.8,3.8,3.4,3.7,3.6,3.3,3.4,3.0,3.4,3.5,3.4,3.2,3.1,3.4,4.1,4.2,3.1,3.2,3.5,3.1,3.0,3.4,3.5,2.3,3.2,3.5,3.8,3.0,3.8,3.2,3.7,3.3]},{\"axis\":{\"matches\":true},\"label\":\"petal_length\",\"values\":[1.4,1.4,1.3,1.5,1.4,1.7,1.4,1.5,1.4,1.5,1.5,1.6,1.4,1.1,1.2,1.5,1.3,1.4,1.7,1.5,1.7,1.5,1.0,1.7,1.9,1.6,1.6,1.5,1.4,1.6,1.6,1.5,1.5,1.4,1.5,1.2,1.3,1.5,1.3,1.5,1.3,1.3,1.3,1.6,1.9,1.4,1.6,1.4,1.5,1.4]},{\"axis\":{\"matches\":true},\"label\":\"petal_width\",\"values\":[0.2,0.2,0.2,0.2,0.2,0.4,0.3,0.2,0.2,0.1,0.2,0.2,0.1,0.1,0.2,0.4,0.4,0.3,0.3,0.3,0.2,0.4,0.2,0.5,0.2,0.2,0.4,0.2,0.2,0.2,0.2,0.4,0.1,0.2,0.1,0.2,0.2,0.1,0.2,0.2,0.3,0.3,0.2,0.6,0.4,0.3,0.2,0.2,0.2,0.2]}],\"hovertemplate\":\"species=setosa<br>%{xaxis.title.text}=%{x}<br>%{yaxis.title.text}=%{y}<extra></extra>\",\"legendgroup\":\"setosa\",\"marker\":{\"color\":\"#636efa\",\"symbol\":\"circle\"},\"name\":\"setosa\",\"showlegend\":true,\"type\":\"splom\"},{\"dimensions\":[{\"axis\":{\"matches\":true},\"label\":\"sepal_length\",\"values\":[7.0,6.4,6.9,5.5,6.5,5.7,6.3,4.9,6.6,5.2,5.0,5.9,6.0,6.1,5.6,6.7,5.6,5.8,6.2,5.6,5.9,6.1,6.3,6.1,6.4,6.6,6.8,6.7,6.0,5.7,5.5,5.5,5.8,6.0,5.4,6.0,6.7,6.3,5.6,5.5,5.5,6.1,5.8,5.0,5.6,5.7,5.7,6.2,5.1,5.7]},{\"axis\":{\"matches\":true},\"label\":\"sepal_width\",\"values\":[3.2,3.2,3.1,2.3,2.8,2.8,3.3,2.4,2.9,2.7,2.0,3.0,2.2,2.9,2.9,3.1,3.0,2.7,2.2,2.5,3.2,2.8,2.5,2.8,2.9,3.0,2.8,3.0,2.9,2.6,2.4,2.4,2.7,2.7,3.0,3.4,3.1,2.3,3.0,2.5,2.6,3.0,2.6,2.3,2.7,3.0,2.9,2.9,2.5,2.8]},{\"axis\":{\"matches\":true},\"label\":\"petal_length\",\"values\":[4.7,4.5,4.9,4.0,4.6,4.5,4.7,3.3,4.6,3.9,3.5,4.2,4.0,4.7,3.6,4.4,4.5,4.1,4.5,3.9,4.8,4.0,4.9,4.7,4.3,4.4,4.8,5.0,4.5,3.5,3.8,3.7,3.9,5.1,4.5,4.5,4.7,4.4,4.1,4.0,4.4,4.6,4.0,3.3,4.2,4.2,4.2,4.3,3.0,4.1]},{\"axis\":{\"matches\":true},\"label\":\"petal_width\",\"values\":[1.4,1.5,1.5,1.3,1.5,1.3,1.6,1.0,1.3,1.4,1.0,1.5,1.0,1.4,1.3,1.4,1.5,1.0,1.5,1.1,1.8,1.3,1.5,1.2,1.3,1.4,1.4,1.7,1.5,1.0,1.1,1.0,1.2,1.6,1.5,1.6,1.5,1.3,1.3,1.3,1.2,1.4,1.2,1.0,1.3,1.2,1.3,1.3,1.1,1.3]}],\"hovertemplate\":\"species=versicolor<br>%{xaxis.title.text}=%{x}<br>%{yaxis.title.text}=%{y}<extra></extra>\",\"legendgroup\":\"versicolor\",\"marker\":{\"color\":\"#EF553B\",\"symbol\":\"circle\"},\"name\":\"versicolor\",\"showlegend\":true,\"type\":\"splom\"},{\"dimensions\":[{\"axis\":{\"matches\":true},\"label\":\"sepal_length\",\"values\":[6.3,5.8,7.1,6.3,6.5,7.6,4.9,7.3,6.7,7.2,6.5,6.4,6.8,5.7,5.8,6.4,6.5,7.7,7.7,6.0,6.9,5.6,7.7,6.3,6.7,7.2,6.2,6.1,6.4,7.2,7.4,7.9,6.4,6.3,6.1,7.7,6.3,6.4,6.0,6.9,6.7,6.9,5.8,6.8,6.7,6.7,6.3,6.5,6.2,5.9]},{\"axis\":{\"matches\":true},\"label\":\"sepal_width\",\"values\":[3.3,2.7,3.0,2.9,3.0,3.0,2.5,2.9,2.5,3.6,3.2,2.7,3.0,2.5,2.8,3.2,3.0,3.8,2.6,2.2,3.2,2.8,2.8,2.7,3.3,3.2,2.8,3.0,2.8,3.0,2.8,3.8,2.8,2.8,2.6,3.0,3.4,3.1,3.0,3.1,3.1,3.1,2.7,3.2,3.3,3.0,2.5,3.0,3.4,3.0]},{\"axis\":{\"matches\":true},\"label\":\"petal_length\",\"values\":[6.0,5.1,5.9,5.6,5.8,6.6,4.5,6.3,5.8,6.1,5.1,5.3,5.5,5.0,5.1,5.3,5.5,6.7,6.9,5.0,5.7,4.9,6.7,4.9,5.7,6.0,4.8,4.9,5.6,5.8,6.1,6.4,5.6,5.1,5.6,6.1,5.6,5.5,4.8,5.4,5.6,5.1,5.1,5.9,5.7,5.2,5.0,5.2,5.4,5.1]},{\"axis\":{\"matches\":true},\"label\":\"petal_width\",\"values\":[2.5,1.9,2.1,1.8,2.2,2.1,1.7,1.8,1.8,2.5,2.0,1.9,2.1,2.0,2.4,2.3,1.8,2.2,2.3,1.5,2.3,2.0,2.0,1.8,2.1,1.8,1.8,1.8,2.1,1.6,1.9,2.0,2.2,1.5,1.4,2.3,2.4,1.8,1.8,2.1,2.4,2.3,1.9,2.3,2.5,2.3,1.9,2.0,2.3,1.8]}],\"hovertemplate\":\"species=virginica<br>%{xaxis.title.text}=%{x}<br>%{yaxis.title.text}=%{y}<extra></extra>\",\"legendgroup\":\"virginica\",\"marker\":{\"color\":\"#00cc96\",\"symbol\":\"circle\"},\"name\":\"virginica\",\"showlegend\":true,\"type\":\"splom\"}],                        {\"template\":{\"data\":{\"histogram2dcontour\":[{\"type\":\"histogram2dcontour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"choropleth\":[{\"type\":\"choropleth\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"histogram2d\":[{\"type\":\"histogram2d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmap\":[{\"type\":\"heatmap\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmapgl\":[{\"type\":\"heatmapgl\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"contourcarpet\":[{\"type\":\"contourcarpet\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"contour\":[{\"type\":\"contour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"surface\":[{\"type\":\"surface\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"mesh3d\":[{\"type\":\"mesh3d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"scatter\":[{\"fillpattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2},\"type\":\"scatter\"}],\"parcoords\":[{\"type\":\"parcoords\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolargl\":[{\"type\":\"scatterpolargl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"bar\":[{\"error_x\":{\"color\":\"#2a3f5f\"},\"error_y\":{\"color\":\"#2a3f5f\"},\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"bar\"}],\"scattergeo\":[{\"type\":\"scattergeo\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolar\":[{\"type\":\"scatterpolar\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"histogram\":[{\"marker\":{\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"histogram\"}],\"scattergl\":[{\"type\":\"scattergl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatter3d\":[{\"type\":\"scatter3d\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattermapbox\":[{\"type\":\"scattermapbox\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterternary\":[{\"type\":\"scatterternary\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattercarpet\":[{\"type\":\"scattercarpet\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"carpet\":[{\"aaxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"baxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"type\":\"carpet\"}],\"table\":[{\"cells\":{\"fill\":{\"color\":\"#EBF0F8\"},\"line\":{\"color\":\"white\"}},\"header\":{\"fill\":{\"color\":\"#C8D4E3\"},\"line\":{\"color\":\"white\"}},\"type\":\"table\"}],\"barpolar\":[{\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"barpolar\"}],\"pie\":[{\"automargin\":true,\"type\":\"pie\"}]},\"layout\":{\"autotypenumbers\":\"strict\",\"colorway\":[\"#636efa\",\"#EF553B\",\"#00cc96\",\"#ab63fa\",\"#FFA15A\",\"#19d3f3\",\"#FF6692\",\"#B6E880\",\"#FF97FF\",\"#FECB52\"],\"font\":{\"color\":\"#2a3f5f\"},\"hovermode\":\"closest\",\"hoverlabel\":{\"align\":\"left\"},\"paper_bgcolor\":\"white\",\"plot_bgcolor\":\"#E5ECF6\",\"polar\":{\"bgcolor\":\"#E5ECF6\",\"angularaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"radialaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"ternary\":{\"bgcolor\":\"#E5ECF6\",\"aaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"baxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"caxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"coloraxis\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"colorscale\":{\"sequential\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"sequentialminus\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"diverging\":[[0,\"#8e0152\"],[0.1,\"#c51b7d\"],[0.2,\"#de77ae\"],[0.3,\"#f1b6da\"],[0.4,\"#fde0ef\"],[0.5,\"#f7f7f7\"],[0.6,\"#e6f5d0\"],[0.7,\"#b8e186\"],[0.8,\"#7fbc41\"],[0.9,\"#4d9221\"],[1,\"#276419\"]]},\"xaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"yaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"scene\":{\"xaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"yaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"zaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2}},\"shapedefaults\":{\"line\":{\"color\":\"#2a3f5f\"}},\"annotationdefaults\":{\"arrowcolor\":\"#2a3f5f\",\"arrowhead\":0,\"arrowwidth\":1},\"geo\":{\"bgcolor\":\"white\",\"landcolor\":\"#E5ECF6\",\"subunitcolor\":\"white\",\"showland\":true,\"showlakes\":true,\"lakecolor\":\"white\"},\"title\":{\"x\":0.05},\"mapbox\":{\"style\":\"light\"}}},\"legend\":{\"title\":{\"text\":\"species\"},\"tracegroupgap\":0},\"margin\":{\"t\":60},\"dragmode\":\"select\"},                        {\"responsive\": true}                    ).then(function(){\n",[m
[32m+[m[32m              "                            \n",[m
[32m+[m[32m              "var gd = document.getElementById('383e9611-935f-44c6-a1bd-e12381a71109');\n",[m
[32m+[m[32m              "var x = new MutationObserver(function (mutations, observer) {{\n",[m
[32m+[m[32m              "        var display = window.getComputedStyle(gd).display;\n",[m
[32m+[m[32m              "        if (!display || display === 'none') {{\n",[m
[32m+[m[32m              "            console.log([gd, 'removed!']);\n",[m
[32m+[m[32m              "            Plotly.purge(gd);\n",[m
[32m+[m[32m              "            observer.disconnect();\n",[m
[32m+[m[32m              "        }}\n",[m
[32m+[m[32m              "}});\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "// Listen for the removal of the full notebook cells\n",[m
[32m+[m[32m              "var notebookContainer = gd.closest('#notebook-container');\n",[m
[32m+[m[32m              "if (notebookContainer) {{\n",[m
[32m+[m[32m              "    x.observe(notebookContainer, {childList: true});\n",[m
[32m+[m[32m              "}}\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "// Listen for the clearing of the current output cell\n",[m
[32m+[m[32m              "var outputEl = gd.closest('.output');\n",[m
[32m+[m[32m              "if (outputEl) {{\n",[m
[32m+[m[32m              "    x.observe(outputEl, {childList: true});\n",[m
[32m+[m[32m              "}}\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "                        })                };                            </script>        </div>\n",[m
[32m+[m[32m              "</body>\n",[m
[32m+[m[32m              "</html>"[m
[32m+[m[32m            ][m
[32m+[m[32m          },[m
[32m+[m[32m          "metadata": {}[m
[32m+[m[32m        }[m
       ][m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    }[m
[31m-   ],[m
[31m-   "source": [[m
[31m-    "# Q4. Using the iris dataset in the Plotly library, Plot a scatter matrix plot, using the \"species\" column for\n",[m
[31m-    "# the color parameter.\n",[m
[31m-    "# Note: Use \"sepal_length\", \"sepal_width\", \"petal_length\", \"petal_width\" columns only with the\n",[m
[31m-    "# dimensions parameter.\n",[m
[31m-    "import plotly.express as px\n",[m
[31m-    "from sklearn.datasets import load_iris\n",[m
[31m-    "\n",[m
[31m-    "iris = load_iris()\n",[m
[31m-    "df = px.data.iris()\n",[m
[31m-    "\n",[m
[31m-    "fig = px.scatter_matrix(df, dimensions=[\"sepal_length\", \"sepal_width\", \"petal_length\", \"petal_width\"], color=\"species\")\n",[m
[31m-    "fig.show()\n"[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": 17,[m
[31m-   "metadata": {[m
[31m-    "colab": {[m
[31m-     "base_uri": "https://localhost:8080/",[m
[31m-     "height": 542[m
     },[m
[31m-    "id": "pmWg_E4u8vHB",[m
[31m-    "outputId": "8d4edcf6-8e11-465d-8bef-70720e2325d1"[m
[31m-   },[m
[31m-   "outputs": [[m
     {[m
[31m-     "data": {[m
[31m-      "text/html": [[m
[31m-       "<html>\n",[m
[31m-       "<head><meta charset=\"utf-8\" /></head>\n",[m
[31m-       "<body>\n",[m
[31m-       "    <div>            <script src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG\"></script><script type=\"text/javascript\">if (window.MathJax && window.MathJax.Hub && window.MathJax.Hub.Config) {window.MathJax.Hub.Config({SVG: {font: \"STIX-Web\"}});}</script>                <script type=\"text/javascript\">window.PlotlyConfig = {MathJaxConfig: 'local'};</script>\n",[m
[31m-       "        <script src=\"https://cdn.plot.ly/plotly-2.18.2.min.js\"></script>                <div id=\"6073e49f-24d4-4198-ba4a-f22498e5c3f7\" class=\"plotly-graph-div\" style=\"height:525px; width:100%;\"></div>            <script type=\"text/javascript\">                                    window.PLOTLYENV=window.PLOTLYENV || {};                                    if (document.getElementById(\"6073e49f-24d4-4198-ba4a-f22498e5c3f7\")) {                    Plotly.newPlot(                        \"6073e49f-24d4-4198-ba4a-f22498e5c3f7\",                        [{\"alignmentgroup\":\"True\",\"bingroup\":\"x\",\"hovertemplate\":\"total_bill=%{x}<br>count=%{y}<extra></extra>\",\"legendgroup\":\"\",\"marker\":{\"color\":\"orange\",\"opacity\":0.5,\"pattern\":{\"shape\":\"\"}},\"name\":\"\",\"nbinsx\":20,\"offsetgroup\":\"\",\"orientation\":\"v\",\"showlegend\":false,\"x\":[16.99,10.34,21.01,23.68,24.59,25.29,8.77,26.88,15.04,14.78,10.27,35.26,15.42,18.43,14.83,21.58,10.33,16.29,16.97,20.65,17.92,20.29,15.77,39.42,19.82,17.81,13.37,12.69,21.7,19.65,9.55,18.35,15.06,20.69,17.78,24.06,16.31,16.93,18.69,31.27,16.04,17.46,13.94,9.68,30.4,18.29,22.23,32.4,28.55,18.04,12.54,10.29,34.81,9.94,25.56,19.49,38.01,26.41,11.24,48.27,20.29,13.81,11.02,18.29,17.59,20.08,16.45,3.07,20.23,15.01,12.02,17.07,26.86,25.28,14.73,10.51,17.92,27.2,22.76,17.29,19.44,16.66,10.07,32.68,15.98,34.83,13.03,18.28,24.71,21.16,28.97,22.49,5.75,16.32,22.75,40.17,27.28,12.03,21.01,12.46,11.35,15.38,44.3,22.42,20.92,15.36,20.49,25.21,18.24,14.31,14.0,7.25,38.07,23.95,25.71,17.31,29.93,10.65,12.43,24.08,11.69,13.42,14.26,15.95,12.48,29.8,8.52,14.52,11.38,22.82,19.08,20.27,11.17,12.26,18.26,8.51,10.33,14.15,16.0,13.16,17.47,34.3,41.19,27.05,16.43,8.35,18.64,11.87,9.78,7.51,14.07,13.13,17.26,24.55,19.77,29.85,48.17,25.0,13.39,16.49,21.5,12.66,16.21,13.81,17.51,24.52,20.76,31.71,10.59,10.63,50.81,15.81,7.25,31.85,16.82,32.9,17.89,14.48,9.6,34.63,34.65,23.33,45.35,23.17,40.55,20.69,20.9,30.46,18.15,23.1,15.69,19.81,28.44,15.48,16.58,7.56,10.34,43.11,13.0,13.51,18.71,12.74,13.0,16.4,20.53,16.47,26.59,38.73,24.27,12.76,30.06,25.89,48.33,13.27,28.17,12.9,28.15,11.59,7.74,30.14,12.16,13.42,8.58,15.98,13.42,16.27,10.09,20.45,13.28,22.12,24.01,15.69,11.61,10.77,15.53,10.07,12.6,32.83,35.83,29.03,27.18,22.67,17.82,18.78],\"xaxis\":\"x\",\"yaxis\":\"y\",\"type\":\"histogram\"},{\"alignmentgroup\":\"True\",\"hovertemplate\":\"total_bill=%{x}<extra></extra>\",\"legendgroup\":\"\",\"marker\":{\"color\":\"orange\"},\"name\":\"\",\"notched\":true,\"offsetgroup\":\"\",\"showlegend\":false,\"x\":[16.99,10.34,21.01,23.68,24.59,25.29,8.77,26.88,15.04,14.78,10.27,35.26,15.42,18.43,14.83,21.58,10.33,16.29,16.97,20.65,17.92,20.29,15.77,39.42,19.82,17.81,13.37,12.69,21.7,19.65,9.55,18.35,15.06,20.69,17.78,24.06,16.31,16.93,18.69,31.27,16.04,17.46,13.94,9.68,30.4,18.29,22.23,32.4,28.55,18.04,12.54,10.29,34.81,9.94,25.56,19.49,38.01,26.41,11.24,48.27,20.29,13.81,11.02,18.29,17.59,20.08,16.45,3.07,20.23,15.01,12.02,17.07,26.86,25.28,14.73,10.51,17.92,27.2,22.76,17.29,19.44,16.66,10.07,32.68,15.98,34.83,13.03,18.28,24.71,21.16,28.97,22.49,5.75,16.32,22.75,40.17,27.28,12.03,21.01,12.46,11.35,15.38,44.3,22.42,20.92,15.36,20.49,25.21,18.24,14.31,14.0,7.25,38.07,23.95,25.71,17.31,29.93,10.65,12.43,24.08,11.69,13.42,14.26,15.95,12.48,29.8,8.52,14.52,11.38,22.82,19.08,20.27,11.17,12.26,18.26,8.51,10.33,14.15,16.0,13.16,17.47,34.3,41.19,27.05,16.43,8.35,18.64,11.87,9.78,7.51,14.07,13.13,17.26,24.55,19.77,29.85,48.17,25.0,13.39,16.49,21.5,12.66,16.21,13.81,17.51,24.52,20.76,31.71,10.59,10.63,50.81,15.81,7.25,31.85,16.82,32.9,17.89,14.48,9.6,34.63,34.65,23.33,45.35,23.17,40.55,20.69,20.9,30.46,18.15,23.1,15.69,19.81,28.44,15.48,16.58,7.56,10.34,43.11,13.0,13.51,18.71,12.74,13.0,16.4,20.53,16.47,26.59,38.73,24.27,12.76,30.06,25.89,48.33,13.27,28.17,12.9,28.15,11.59,7.74,30.14,12.16,13.42,8.58,15.98,13.42,16.27,10.09,20.45,13.28,22.12,24.01,15.69,11.61,10.77,15.53,10.07,12.6,32.83,35.83,29.03,27.18,22.67,17.82,18.78],\"xaxis\":\"x2\",\"yaxis\":\"y2\",\"type\":\"box\"}],                        {\"template\":{\"data\":{\"histogram2dcontour\":[{\"type\":\"histogram2dcontour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"choropleth\":[{\"type\":\"choropleth\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"histogram2d\":[{\"type\":\"histogram2d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmap\":[{\"type\":\"heatmap\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmapgl\":[{\"type\":\"heatmapgl\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"contourcarpet\":[{\"type\":\"contourcarpet\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"contour\":[{\"type\":\"contour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"surface\":[{\"type\":\"surface\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"mesh3d\":[{\"type\":\"mesh3d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"scatter\":[{\"fillpattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2},\"type\":\"scatter\"}],\"parcoords\":[{\"type\":\"parcoords\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolargl\":[{\"type\":\"scatterpolargl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"bar\":[{\"error_x\":{\"color\":\"#2a3f5f\"},\"error_y\":{\"color\":\"#2a3f5f\"},\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"bar\"}],\"scattergeo\":[{\"type\":\"scattergeo\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolar\":[{\"type\":\"scatterpolar\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"histogram\":[{\"marker\":{\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"histogram\"}],\"scattergl\":[{\"type\":\"scattergl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatter3d\":[{\"type\":\"scatter3d\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattermapbox\":[{\"type\":\"scattermapbox\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterternary\":[{\"type\":\"scatterternary\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattercarpet\":[{\"type\":\"scattercarpet\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"carpet\":[{\"aaxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"baxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"type\":\"carpet\"}],\"table\":[{\"cells\":{\"fill\":{\"color\":\"#EBF0F8\"},\"line\":{\"color\":\"white\"}},\"header\":{\"fill\":{\"color\":\"#C8D4E3\"},\"line\":{\"color\":\"white\"}},\"type\":\"table\"}],\"barpolar\":[{\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"barpolar\"}],\"pie\":[{\"automargin\":true,\"type\":\"pie\"}]},\"layout\":{\"autotypenumbers\":\"strict\",\"colorway\":[\"#636efa\",\"#EF553B\",\"#00cc96\",\"#ab63fa\",\"#FFA15A\",\"#19d3f3\",\"#FF6692\",\"#B6E880\",\"#FF97FF\",\"#FECB52\"],\"font\":{\"color\":\"#2a3f5f\"},\"hovermode\":\"closest\",\"hoverlabel\":{\"align\":\"left\"},\"paper_bgcolor\":\"white\",\"plot_bgcolor\":\"#E5ECF6\",\"polar\":{\"bgcolor\":\"#E5ECF6\",\"angularaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"radialaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"ternary\":{\"bgcolor\":\"#E5ECF6\",\"aaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"baxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"caxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"coloraxis\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"colorscale\":{\"sequential\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"sequentialminus\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"diverging\":[[0,\"#8e0152\"],[0.1,\"#c51b7d\"],[0.2,\"#de77ae\"],[0.3,\"#f1b6da\"],[0.4,\"#fde0ef\"],[0.5,\"#f7f7f7\"],[0.6,\"#e6f5d0\"],[0.7,\"#b8e186\"],[0.8,\"#7fbc41\"],[0.9,\"#4d9221\"],[1,\"#276419\"]]},\"xaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"yaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"scene\":{\"xaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"yaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"zaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2}},\"shapedefaults\":{\"line\":{\"color\":\"#2a3f5f\"}},\"annotationdefaults\":{\"arrowcolor\":\"#2a3f5f\",\"arrowhead\":0,\"arrowwidth\":1},\"geo\":{\"bgcolor\":\"white\",\"landcolor\":\"#E5ECF6\",\"subunitcolor\":\"white\",\"showland\":true,\"showlakes\":true,\"lakecolor\":\"white\"},\"title\":{\"x\":0.05},\"mapbox\":{\"style\":\"light\"}}},\"xaxis\":{\"anchor\":\"y\",\"domain\":[0.0,1.0],\"title\":{\"text\":\"total_bill\"}},\"yaxis\":{\"anchor\":\"x\",\"domain\":[0.0,0.8316],\"title\":{\"text\":\"count\"}},\"xaxis2\":{\"anchor\":\"y2\",\"domain\":[0.0,1.0],\"matches\":\"x\",\"showticklabels\":false,\"showgrid\":true},\"yaxis2\":{\"anchor\":\"x2\",\"domain\":[0.8416,1.0],\"matches\":\"y2\",\"showticklabels\":false,\"showline\":false,\"ticks\":\"\",\"showgrid\":false},\"legend\":{\"tracegroupgap\":0},\"margin\":{\"t\":60},\"barmode\":\"relative\"},                        {\"responsive\": true}                    ).then(function(){\n",[m
[31m-       "                            \n",[m
[31m-       "var gd = document.getElementById('6073e49f-24d4-4198-ba4a-f22498e5c3f7');\n",[m
[31m-       "var x = new MutationObserver(function (mutations, observer) {{\n",[m
[31m-       "        var display = window.getComputedStyle(gd).display;\n",[m
[31m-       "        if (!display || display === 'none') {{\n",[m
[31m-       "            console.log([gd, 'removed!']);\n",[m
[31m-       "            Plotly.purge(gd);\n",[m
[31m-       "            observer.disconnect();\n",[m
[31m-       "        }}\n",[m
[31m-       "}});\n",[m
[31m-       "\n",[m
[31m-       "// Listen for the removal of the full notebook cells\n",[m
[31m-       "var notebookContainer = gd.closest('#notebook-container');\n",[m
[31m-       "if (notebookContainer) {{\n",[m
[31m-       "    x.observe(notebookContainer, {childList: true});\n",[m
[31m-       "}}\n",[m
[31m-       "\n",[m
[31m-       "// Listen for the clearing of the current output cell\n",[m
[31m-       "var outputEl = gd.closest('.output');\n",[m
[31m-       "if (outputEl) {{\n",[m
[31m-       "    x.observe(outputEl, {childList: true});\n",[m
[31m-       "}}\n",[m
[31m-       "\n",[m
[31m-       "                        })                };                            </script>        </div>\n",[m
[31m-       "</body>\n",[m
[31m-       "</html>"[m
[32m+[m[32m      "cell_type": "code",[m
[32m+[m[32m      "source": [[m
[32m+[m[32m        "# Q5. What is Distplot? Using Plotly express, plot a distplot.\n",[m
[32m+[m[32m        "# Ans-> 1) distplot is a histogram with a line plot of the probability density function. \n",[m
[32m+[m[32m        "# 2) It is a useful visualization tool for understanding the distribution of a variable.\n",[m
[32m+[m[32m        "import plotly.express as px\n",[m
[32m+[m[32m        "tips = px.data.tips()\n",[m
[32m+[m[32m        "fig = px.histogram(tips, x=\"total_bill\", nbins=20, opacity=0.5, marginal=\"box\", color_discrete_sequence=['orange'])\n",[m
[32m+[m[32m        "fig.show()\n"[m
[32m+[m[32m      ],[m
[32m+[m[32m      "metadata": {[m
[32m+[m[32m        "colab": {[m
[32m+[m[32m          "base_uri": "https://localhost:8080/",[m
[32m+[m[32m          "height": 542[m
[32m+[m[32m        },[m
[32m+[m[32m        "id": "pmWg_E4u8vHB",[m
[32m+[m[32m        "outputId": "8d4edcf6-8e11-465d-8bef-70720e2325d1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "execution_count": 17,[m
[32m+[m[32m      "outputs": [[m
[32m+[m[32m        {[m
[32m+[m[32m          "output_type": "display_data",[m
[32m+[m[32m          "data": {[m
[32m+[m[32m            "text/html": [[m
[32m+[m[32m              "<html>\n",[m
[32m+[m[32m              "<head><meta charset=\"utf-8\" /></head>\n",[m
[32m+[m[32m              "<body>\n",[m
[32m+[m[32m              "    <div>            <script src=\"https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-AMS-MML_SVG\"></script><script type=\"text/javascript\">if (window.MathJax && window.MathJax.Hub && window.MathJax.Hub.Config) {window.MathJax.Hub.Config({SVG: {font: \"STIX-Web\"}});}</script>                <script type=\"text/javascript\">window.PlotlyConfig = {MathJaxConfig: 'local'};</script>\n",[m
[32m+[m[32m              "        <script src=\"https://cdn.plot.ly/plotly-2.18.2.min.js\"></script>                <div id=\"6073e49f-24d4-4198-ba4a-f22498e5c3f7\" class=\"plotly-graph-div\" style=\"height:525px; width:100%;\"></div>            <script type=\"text/javascript\">                                    window.PLOTLYENV=window.PLOTLYENV || {};                                    if (document.getElementById(\"6073e49f-24d4-4198-ba4a-f22498e5c3f7\")) {                    Plotly.newPlot(                        \"6073e49f-24d4-4198-ba4a-f22498e5c3f7\",                        [{\"alignmentgroup\":\"True\",\"bingroup\":\"x\",\"hovertemplate\":\"total_bill=%{x}<br>count=%{y}<extra></extra>\",\"legendgroup\":\"\",\"marker\":{\"color\":\"orange\",\"opacity\":0.5,\"pattern\":{\"shape\":\"\"}},\"name\":\"\",\"nbinsx\":20,\"offsetgroup\":\"\",\"orientation\":\"v\",\"showlegend\":false,\"x\":[16.99,10.34,21.01,23.68,24.59,25.29,8.77,26.88,15.04,14.78,10.27,35.26,15.42,18.43,14.83,21.58,10.33,16.29,16.97,20.65,17.92,20.29,15.77,39.42,19.82,17.81,13.37,12.69,21.7,19.65,9.55,18.35,15.06,20.69,17.78,24.06,16.31,16.93,18.69,31.27,16.04,17.46,13.94,9.68,30.4,18.29,22.23,32.4,28.55,18.04,12.54,10.29,34.81,9.94,25.56,19.49,38.01,26.41,11.24,48.27,20.29,13.81,11.02,18.29,17.59,20.08,16.45,3.07,20.23,15.01,12.02,17.07,26.86,25.28,14.73,10.51,17.92,27.2,22.76,17.29,19.44,16.66,10.07,32.68,15.98,34.83,13.03,18.28,24.71,21.16,28.97,22.49,5.75,16.32,22.75,40.17,27.28,12.03,21.01,12.46,11.35,15.38,44.3,22.42,20.92,15.36,20.49,25.21,18.24,14.31,14.0,7.25,38.07,23.95,25.71,17.31,29.93,10.65,12.43,24.08,11.69,13.42,14.26,15.95,12.48,29.8,8.52,14.52,11.38,22.82,19.08,20.27,11.17,12.26,18.26,8.51,10.33,14.15,16.0,13.16,17.47,34.3,41.19,27.05,16.43,8.35,18.64,11.87,9.78,7.51,14.07,13.13,17.26,24.55,19.77,29.85,48.17,25.0,13.39,16.49,21.5,12.66,16.21,13.81,17.51,24.52,20.76,31.71,10.59,10.63,50.81,15.81,7.25,31.85,16.82,32.9,17.89,14.48,9.6,34.63,34.65,23.33,45.35,23.17,40.55,20.69,20.9,30.46,18.15,23.1,15.69,19.81,28.44,15.48,16.58,7.56,10.34,43.11,13.0,13.51,18.71,12.74,13.0,16.4,20.53,16.47,26.59,38.73,24.27,12.76,30.06,25.89,48.33,13.27,28.17,12.9,28.15,11.59,7.74,30.14,12.16,13.42,8.58,15.98,13.42,16.27,10.09,20.45,13.28,22.12,24.01,15.69,11.61,10.77,15.53,10.07,12.6,32.83,35.83,29.03,27.18,22.67,17.82,18.78],\"xaxis\":\"x\",\"yaxis\":\"y\",\"type\":\"histogram\"},{\"alignmentgroup\":\"True\",\"hovertemplate\":\"total_bill=%{x}<extra></extra>\",\"legendgroup\":\"\",\"marker\":{\"color\":\"orange\"},\"name\":\"\",\"notched\":true,\"offsetgroup\":\"\",\"showlegend\":false,\"x\":[16.99,10.34,21.01,23.68,24.59,25.29,8.77,26.88,15.04,14.78,10.27,35.26,15.42,18.43,14.83,21.58,10.33,16.29,16.97,20.65,17.92,20.29,15.77,39.42,19.82,17.81,13.37,12.69,21.7,19.65,9.55,18.35,15.06,20.69,17.78,24.06,16.31,16.93,18.69,31.27,16.04,17.46,13.94,9.68,30.4,18.29,22.23,32.4,28.55,18.04,12.54,10.29,34.81,9.94,25.56,19.49,38.01,26.41,11.24,48.27,20.29,13.81,11.02,18.29,17.59,20.08,16.45,3.07,20.23,15.01,12.02,17.07,26.86,25.28,14.73,10.51,17.92,27.2,22.76,17.29,19.44,16.66,10.07,32.68,15.98,34.83,13.03,18.28,24.71,21.16,28.97,22.49,5.75,16.32,22.75,40.17,27.28,12.03,21.01,12.46,11.35,15.38,44.3,22.42,20.92,15.36,20.49,25.21,18.24,14.31,14.0,7.25,38.07,23.95,25.71,17.31,29.93,10.65,12.43,24.08,11.69,13.42,14.26,15.95,12.48,29.8,8.52,14.52,11.38,22.82,19.08,20.27,11.17,12.26,18.26,8.51,10.33,14.15,16.0,13.16,17.47,34.3,41.19,27.05,16.43,8.35,18.64,11.87,9.78,7.51,14.07,13.13,17.26,24.55,19.77,29.85,48.17,25.0,13.39,16.49,21.5,12.66,16.21,13.81,17.51,24.52,20.76,31.71,10.59,10.63,50.81,15.81,7.25,31.85,16.82,32.9,17.89,14.48,9.6,34.63,34.65,23.33,45.35,23.17,40.55,20.69,20.9,30.46,18.15,23.1,15.69,19.81,28.44,15.48,16.58,7.56,10.34,43.11,13.0,13.51,18.71,12.74,13.0,16.4,20.53,16.47,26.59,38.73,24.27,12.76,30.06,25.89,48.33,13.27,28.17,12.9,28.15,11.59,7.74,30.14,12.16,13.42,8.58,15.98,13.42,16.27,10.09,20.45,13.28,22.12,24.01,15.69,11.61,10.77,15.53,10.07,12.6,32.83,35.83,29.03,27.18,22.67,17.82,18.78],\"xaxis\":\"x2\",\"yaxis\":\"y2\",\"type\":\"box\"}],                        {\"template\":{\"data\":{\"histogram2dcontour\":[{\"type\":\"histogram2dcontour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"choropleth\":[{\"type\":\"choropleth\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"histogram2d\":[{\"type\":\"histogram2d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmap\":[{\"type\":\"heatmap\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"heatmapgl\":[{\"type\":\"heatmapgl\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"contourcarpet\":[{\"type\":\"contourcarpet\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"contour\":[{\"type\":\"contour\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"surface\":[{\"type\":\"surface\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"},\"colorscale\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]]}],\"mesh3d\":[{\"type\":\"mesh3d\",\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}],\"scatter\":[{\"fillpattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2},\"type\":\"scatter\"}],\"parcoords\":[{\"type\":\"parcoords\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolargl\":[{\"type\":\"scatterpolargl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"bar\":[{\"error_x\":{\"color\":\"#2a3f5f\"},\"error_y\":{\"color\":\"#2a3f5f\"},\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"bar\"}],\"scattergeo\":[{\"type\":\"scattergeo\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterpolar\":[{\"type\":\"scatterpolar\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"histogram\":[{\"marker\":{\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"histogram\"}],\"scattergl\":[{\"type\":\"scattergl\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatter3d\":[{\"type\":\"scatter3d\",\"line\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattermapbox\":[{\"type\":\"scattermapbox\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scatterternary\":[{\"type\":\"scatterternary\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"scattercarpet\":[{\"type\":\"scattercarpet\",\"marker\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}}}],\"carpet\":[{\"aaxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"baxis\":{\"endlinecolor\":\"#2a3f5f\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"minorgridcolor\":\"white\",\"startlinecolor\":\"#2a3f5f\"},\"type\":\"carpet\"}],\"table\":[{\"cells\":{\"fill\":{\"color\":\"#EBF0F8\"},\"line\":{\"color\":\"white\"}},\"header\":{\"fill\":{\"color\":\"#C8D4E3\"},\"line\":{\"color\":\"white\"}},\"type\":\"table\"}],\"barpolar\":[{\"marker\":{\"line\":{\"color\":\"#E5ECF6\",\"width\":0.5},\"pattern\":{\"fillmode\":\"overlay\",\"size\":10,\"solidity\":0.2}},\"type\":\"barpolar\"}],\"pie\":[{\"automargin\":true,\"type\":\"pie\"}]},\"layout\":{\"autotypenumbers\":\"strict\",\"colorway\":[\"#636efa\",\"#EF553B\",\"#00cc96\",\"#ab63fa\",\"#FFA15A\",\"#19d3f3\",\"#FF6692\",\"#B6E880\",\"#FF97FF\",\"#FECB52\"],\"font\":{\"color\":\"#2a3f5f\"},\"hovermode\":\"closest\",\"hoverlabel\":{\"align\":\"left\"},\"paper_bgcolor\":\"white\",\"plot_bgcolor\":\"#E5ECF6\",\"polar\":{\"bgcolor\":\"#E5ECF6\",\"angularaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"radialaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"ternary\":{\"bgcolor\":\"#E5ECF6\",\"aaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"baxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"},\"caxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\"}},\"coloraxis\":{\"colorbar\":{\"outlinewidth\":0,\"ticks\":\"\"}},\"colorscale\":{\"sequential\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"sequentialminus\":[[0.0,\"#0d0887\"],[0.1111111111111111,\"#46039f\"],[0.2222222222222222,\"#7201a8\"],[0.3333333333333333,\"#9c179e\"],[0.4444444444444444,\"#bd3786\"],[0.5555555555555556,\"#d8576b\"],[0.6666666666666666,\"#ed7953\"],[0.7777777777777778,\"#fb9f3a\"],[0.8888888888888888,\"#fdca26\"],[1.0,\"#f0f921\"]],\"diverging\":[[0,\"#8e0152\"],[0.1,\"#c51b7d\"],[0.2,\"#de77ae\"],[0.3,\"#f1b6da\"],[0.4,\"#fde0ef\"],[0.5,\"#f7f7f7\"],[0.6,\"#e6f5d0\"],[0.7,\"#b8e186\"],[0.8,\"#7fbc41\"],[0.9,\"#4d9221\"],[1,\"#276419\"]]},\"xaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"yaxis\":{\"gridcolor\":\"white\",\"linecolor\":\"white\",\"ticks\":\"\",\"title\":{\"standoff\":15},\"zerolinecolor\":\"white\",\"automargin\":true,\"zerolinewidth\":2},\"scene\":{\"xaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"yaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2},\"zaxis\":{\"backgroundcolor\":\"#E5ECF6\",\"gridcolor\":\"white\",\"linecolor\":\"white\",\"showbackground\":true,\"ticks\":\"\",\"zerolinecolor\":\"white\",\"gridwidth\":2}},\"shapedefaults\":{\"line\":{\"color\":\"#2a3f5f\"}},\"annotationdefaults\":{\"arrowcolor\":\"#2a3f5f\",\"arrowhead\":0,\"arrowwidth\":1},\"geo\":{\"bgcolor\":\"white\",\"landcolor\":\"#E5ECF6\",\"subunitcolor\":\"white\",\"showland\":true,\"showlakes\":true,\"lakecolor\":\"white\"},\"title\":{\"x\":0.05},\"mapbox\":{\"style\":\"light\"}}},\"xaxis\":{\"anchor\":\"y\",\"domain\":[0.0,1.0],\"title\":{\"text\":\"total_bill\"}},\"yaxis\":{\"anchor\":\"x\",\"domain\":[0.0,0.8316],\"title\":{\"text\":\"count\"}},\"xaxis2\":{\"anchor\":\"y2\",\"domain\":[0.0,1.0],\"matches\":\"x\",\"showticklabels\":false,\"showgrid\":true},\"yaxis2\":{\"anchor\":\"x2\",\"domain\":[0.8416,1.0],\"matches\":\"y2\",\"showticklabels\":false,\"showline\":false,\"ticks\":\"\",\"showgrid\":false},\"legend\":{\"tracegroupgap\":0},\"margin\":{\"t\":60},\"barmode\":\"relative\"},                        {\"responsive\": true}                    ).then(function(){\n",[m
[32m+[m[32m              "                            \n",[m
[32m+[m[32m              "var gd = document.getElementById('6073e49f-24d4-4198-ba4a-f22498e5c3f7');\n",[m
[32m+[m[32m              "var x = new MutationObserver(function (mutations, observer) {{\n",[m
[32m+[m[32m              "        var display = window.getComputedStyle(gd).display;\n",[m
[32m+[m[32m              "        if (!display || display === 'none') {{\n",[m
[32m+[m[32m              "            console.log([gd, 'removed!']);\n",[m
[32m+[m[32m              "            Plotly.purge(gd);\n",[m
[32m+[m[32m              "            observer.disconnect();\n",[m
[32m+[m[32m              "        }}\n",[m
[32m+[m[32m              "}});\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "// Listen for the removal of the full notebook cells\n",[m
[32m+[m[32m              "var notebookContainer = gd.closest('#notebook-container');\n",[m
[32m+[m[32m              "if (notebookContainer) {{\n",[m
[32m+[m[32m              "    x.observe(notebookContainer, {childList: true});\n",[m
[32m+[m[32m              "}}\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "// Listen for the clearing of the current output cell\n",[m
[32m+[m[32m              "var outputEl = gd.closest('.output');\n",[m
[32m+[m[32m              "if (outputEl) {{\n",[m
[32m+[m[32m              "    x.observe(outputEl, {childList: true});\n",[m
[32m+[m[32m              "}}\n",[m
[32m+[m[32m              "\n",[m
[32m+[m[32m              "                        })                };                            </script>        </div>\n",[m
[32m+[m[32m              "</body>\n",[m
[32m+[m[32m              "</html>"[m
[32m+[m[32m            ][m
[32m+[m[32m          },[m
[32m+[m[32m          "metadata": {}[m
[32m+[m[32m        }[m
       ][m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[32m+[m[32m    },[m
[32m+[m[32m    {[m
[32m+[m[32m      "cell_type": "code",[m
[32m+[m[32m      "source": [],[m
[32m+[m[32m      "metadata": {[m
[32m+[m[32m        "id": "aH3J2DiO8-QU"[m
[32m+[m[32m      },[m
[32m+[m[32m      "execution_count": null,[m
[32m+[m[32m      "outputs": [][m
     }[m
[31m-   ],[m
[31m-   "source": [[m
[31m-    "# Q5. What is Distplot? Using Plotly express, plot a distplot.\n",[m
[31m-    "# Ans-> 1) distplot is a histogram with a line plot of the probability density function. \n",[m
[31m-    "# 2) It is a useful visualization tool for understanding the distribution of a variable.\n",[m
[31m-    "import plotly.express as px\n",[m
[31m-    "tips = px.data.tips()\n",[m
[31m-    "fig = px.histogram(tips, x=\"total_bill\", nbins=20, opacity=0.5, marginal=\"box\", color_discrete_sequence=['orange'])\n",[m
[31m-    "fig.show()\n"[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": null,[m
[31m-   "metadata": {[m
[31m-    "id": "aH3J2DiO8-QU"[m
[31m-   },[m
[31m-   "outputs": [],[m
[31m-   "source": [][m
[31m-  }[m
[31m- ],[m
[31m- "metadata": {[m
[31m-  "colab": {[m
[31m-   "provenance": [][m
[31m-  },[m
[31m-  "kernelspec": {[m
[31m-   "display_name": "Python 3 (ipykernel)",[m
[31m-   "language": "python",[m
[31m-   "name": "python3"[m
[31m-  },[m
[31m-  "language_info": {[m
[31m-   "codemirror_mode": {[m
[31m-    "name": "ipython",[m
[31m-    "version": 3[m
[31m-   },[m
[31m-   "file_extension": ".py",[m
[31m-   "mimetype": "text/x-python",[m
[31m-   "name": "python",[m
[31m-   "nbconvert_exporter": "python",[m
[31m-   "pygments_lexer": "ipython3",[m
[31m-   "version": "3.10.8"[m
[31m-  }[m
[31m- },[m
[31m- "nbformat": 4,[m
[31m- "nbformat_minor": 4[m
[31m-}[m
[32m+[m[32m  ][m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/5MarchAssignment.ipynb b/5MarchAssignment.ipynb[m
[1mdeleted file mode 100644[m
[1mindex a936847..0000000[m
[1m--- a/5MarchAssignment.ipynb[m
[1m+++ /dev/null[m
[36m@@ -1,464 +0,0 @@[m
[31m-{[m
[31m- "cells": [[m
[31m-  {[m
[31m-   "cell_type": "markdown",[m
[31m-   "id": "94fa0090-e305-4fa0-bfef-e2936f69b6ce",[m
[31m-   "metadata": {},[m
[31m-   "source": [[m
[31m-    "Q1. How can you create a Bokeh plot using Python code?\n",[m
[31m-    "Ans->\n",[m
[31m-    "1) Import the necessary Bokeh modules: We need to import bokeh.plotting module to create a figure, and bokeh.io module to display the plot.\n",[m
[31m-    "2) Create a figure: You can create a figure by calling the figure() function. You can set the width, height, and other properties of the figure.\n",[m
[31m-    "3) Add a glyph: You can add a glyph (a graphical representation of your data) to the figure. You can add glyphs such as circles, lines, bars, patches, and more.\n",[m
[31m-    "4) Set plot properties: You can set the properties of the plot, such as the title, axis labels, axis ranges, gridlines, and more.\n",[m
[31m-    "5) Display the plot: You can display the plot using the show() function from the bokeh.io module."[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": 4,[m
[31m-   "id": "e8967121-5d6e-48f4-b1f5-aaa872e89d2b",[m
[31m-   "metadata": {},[m
[31m-   "outputs": [[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "text/html": [[m
[31m-       "<style>\n",[m
[31m-       "        .bk-notebook-logo {\n",[m
[31m-       "            display: block;\n",[m
[31m-       "            width: 20px;\n",[m
[31m-       "            height: 20px;\n",[m
[31m-       "            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAOkSURBVDiNjZRtaJVlGMd/1/08zzln5zjP1LWcU9N0NkN8m2CYjpgQYQXqSs0I84OLIC0hkEKoPtiH3gmKoiJDU7QpLgoLjLIQCpEsNJ1vqUOdO7ppbuec5+V+rj4ctwzd8IIbbi6u+8f1539dt3A78eXC7QizUF7gyV1fD1Yqg4JWz84yffhm0qkFqBogB9rM8tZdtwVsPUhWhGcFJngGeWrPzHm5oaMmkfEg1usvLFyc8jLRqDOMru7AyC8saQr7GG7f5fvDeH7Ej8CM66nIF+8yngt6HWaKh7k49Soy9nXurCi1o3qUbS3zWfrYeQDTB/Qj6kX6Ybhw4B+bOYoLKCC9H3Nu/leUTZ1JdRWkkn2ldcCamzrcf47KKXdAJllSlxAOkRgyHsGC/zRday5Qld9DyoM4/q/rUoy/CXh3jzOu3bHUVZeU+DEn8FInkPBFlu3+nW3Nw0mk6vCDiWg8CeJaxEwuHS3+z5RgY+YBR6V1Z1nxSOfoaPa4LASWxxdNp+VWTk7+4vzaou8v8PN+xo+KY2xsw6une2frhw05CTYOmQvsEhjhWjn0bmXPjpE1+kplmmkP3suftwTubK9Vq22qKmrBhpY4jvd5afdRA3wGjFAgcnTK2s4hY0/GPNIb0nErGMCRxWOOX64Z8RAC4oCXdklmEvcL8o0BfkNK4lUg9HTl+oPlQxdNo3Mg4Nv175e/1LDGzZen30MEjRUtmXSfiTVu1kK8W4txyV6BMKlbgk3lMwYCiusNy9fVfvvwMxv8Ynl6vxoByANLTWplvuj/nF9m2+PDtt1eiHPBr1oIfhCChQMBw6Aw0UulqTKZdfVvfG7VcfIqLG9bcldL/+pdWTLxLUy8Qq38heUIjh4XlzZxzQm19lLFlr8vdQ97rjZVOLf8nclzckbcD4wxXMidpX30sFd37Fv/GtwwhzhxGVAprjbg0gCAEeIgwCZyTV2Z1REEW8O4py0wsjeloKoMr6iCY6dP92H6Vw/oTyICIthibxjm/DfN9lVz8IqtqKYLUXfoKVMVQVVJOElGjrnnUt9T9wbgp8AyYKaGlqingHZU/uG2NTZSVqwHQTWkx9hxjkpWDaCg6Ckj5qebgBVbT3V3NNXMSiWSDdGV3hrtzla7J+duwPOToIg42ChPQOQjspnSlp1V+Gjdged7+8UN5CRAV7a5EdFNwCjEaBR27b3W890TE7g24NAP/mMDXRWrGoFPQI9ls/MWO2dWFAar/xcOIImbbpA3zgAAAABJRU5ErkJggg==);\n",[m
[31m-       "        }\n",[m
[31m-       "    </style>\n",[m
[31m-       "    <div>\n",[m
[31m-       "        <a href=\"https://bokeh.org\" target=\"_blank\" class=\"bk-notebook-logo\"></a>\n",[m
[31m-       "        <span id=\"p1483\">Loading BokehJS ...</span>\n",[m
[31m-       "    </div>\n"[m
[31m-      ][m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    },[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "application/javascript": [[m
[31m-       "(function(root) {\n",[m
[31m-       "  function now() {\n",[m
[31m-       "    return new Date();\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  const force = true;\n",[m
[31m-       "\n",[m
[31m-       "  if (typeof root._bokeh_onload_callbacks === \"undefined\" || force === true) {\n",[m
[31m-       "    root._bokeh_onload_callbacks = [];\n",[m
[31m-       "    root._bokeh_is_loading = undefined;\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "const JS_MIME_TYPE = 'application/javascript';\n",[m
[31m-       "  const HTML_MIME_TYPE = 'text/html';\n",[m
[31m-       "  const EXEC_MIME_TYPE = 'application/vnd.bokehjs_exec.v0+json';\n",[m
[31m-       "  const CLASS_NAME = 'output_bokeh rendered_html';\n",[m
[31m-       "\n",[m
[31m-       "  /**\n",[m
[31m-       "   * Render data to the DOM node\n",[m
[31m-       "   */\n",[m
[31m-       "  function render(props, node) {\n",[m
[31m-       "    const script = document.createElement(\"script\");\n",[m
[31m-       "    node.appendChild(script);\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  /**\n",[m
[31m-       "   * Handle when an output is cleared or removed\n",[m
[31m-       "   */\n",[m
[31m-       "  function handleClearOutput(event, handle) {\n",[m
[31m-       "    const cell = handle.cell;\n",[m
[31m-       "\n",[m
[31m-       "    const id = cell.output_area._bokeh_element_id;\n",[m
[31m-       "    const server_id = cell.output_area._bokeh_server_id;\n",[m
[31m-       "    // Clean up Bokeh references\n",[m
[31m-       "    if (id != null && id in Bokeh.index) {\n",[m
[31m-       "      Bokeh.index[id].model.document.clear();\n",[m
[31m-       "      delete Bokeh.index[id];\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    if (server_id !== undefined) {\n",[m
[31m-       "      // Clean up Bokeh references\n",[m
[31m-       "      const cmd_clean = \"from bokeh.io.state import curstate; print(curstate().uuid_to_server['\" + server_id + \"'].get_sessions()[0].document.roots[0]._id)\";\n",[m
[31m-       "      cell.notebook.kernel.execute(cmd_clean, {\n",[m
[31m-       "        iopub: {\n",[m
[31m-       "          output: function(msg) {\n",[m
[31m-       "            const id = msg.content.text.trim();\n",[m
[31m-       "            if (id in Bokeh.index) {\n",[m
[31m-       "              Bokeh.index[id].model.document.clear();\n",[m
[31m-       "              delete Bokeh.index[id];\n",[m
[31m-       "            }\n",[m
[31m-       "          }\n",[m
[31m-       "        }\n",[m
[31m-       "      });\n",[m
[31m-       "      // Destroy server and session\n",[m
[31m-       "      const cmd_destroy = \"import bokeh.io.notebook as ion; ion.destroy_server('\" + server_id + \"')\";\n",[m
[31m-       "      cell.notebook.kernel.execute(cmd_destroy);\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  /**\n",[m
[31m-       "   * Handle when a new output is added\n",[m
[31m-       "   */\n",[m
[31m-       "  function handleAddOutput(event, handle) {\n",[m
[31m-       "    const output_area = handle.output_area;\n",[m
[31m-       "    const output = handle.output;\n",[m
[31m-       "\n",[m
[31m-       "    // limit handleAddOutput to display_data with EXEC_MIME_TYPE content only\n",[m
[31m-       "    if ((output.output_type != \"display_data\") || (!Object.prototype.hasOwnProperty.call(output.data, EXEC_MIME_TYPE))) {\n",[m
[31m-       "      return\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    const toinsert = output_area.element.find(\".\" + CLASS_NAME.split(' ')[0]);\n",[m
[31m-       "\n",[m
[31m-       "    if (output.metadata[EXEC_MIME_TYPE][\"id\"] !== undefined) {\n",[m
[31m-       "      toinsert[toinsert.length - 1].firstChild.textContent = output.data[JS_MIME_TYPE];\n",[m
[31m-       "      // store reference to embed id on output_area\n",[m
[31m-       "      output_area._bokeh_element_id = output.metadata[EXEC_MIME_TYPE][\"id\"];\n",[m
[31m-       "    }\n",[m
[31m-       "    if (output.metadata[EXEC_MIME_TYPE][\"server_id\"] !== undefined) {\n",[m
[31m-       "      const bk_div = document.createElement(\"div\");\n",[m
[31m-       "      bk_div.innerHTML = output.data[HTML_MIME_TYPE];\n",[m
[31m-       "      const script_attrs = bk_div.children[0].attributes;\n",[m
[31m-       "      for (let i = 0; i < script_attrs.length; i++) {\n",[m
[31m-       "        toinsert[toinsert.length - 1].firstChild.setAttribute(script_attrs[i].name, script_attrs[i].value);\n",[m
[31m-       "        toinsert[toinsert.length - 1].firstChild.textContent = bk_div.children[0].textContent\n",[m
[31m-       "      }\n",[m
[31m-       "      // store reference to server id on output_area\n",[m
[31m-       "      output_area._bokeh_server_id = output.metadata[EXEC_MIME_TYPE][\"server_id\"];\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  function register_renderer(events, OutputArea) {\n",[m
[31m-       "\n",[m
[31m-       "    function append_mime(data, metadata, element) {\n",[m
[31m-       "      // create a DOM node to render to\n",[m
[31m-       "      const toinsert = this.create_output_subarea(\n",[m
[31m-       "        metadata,\n",[m
[31m-       "        CLASS_NAME,\n",[m
[31m-       "        EXEC_MIME_TYPE\n",[m
[31m-       "      );\n",[m
[31m-       "      this.keyboard_manager.register_events(toinsert);\n",[m
[31m-       "      // Render to node\n",[m
[31m-       "      const props = {data: data, metadata: metadata[EXEC_MIME_TYPE]};\n",[m
[31m-       "      render(props, toinsert[toinsert.length - 1]);\n",[m
[31m-       "      element.append(toinsert);\n",[m
[31m-       "      return toinsert\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    /* Handle when an output is cleared or removed */\n",[m
[31m-       "    events.on('clear_output.CodeCell', handleClearOutput);\n",[m
[31m-       "    events.on('delete.Cell', handleClearOutput);\n",[m
[31m-       "\n",[m
[31m-       "    /* Handle when a new output is added */\n",[m
[31m-       "    events.on('output_added.OutputArea', handleAddOutput);\n",[m
[31m-       "\n",[m
[31m-       "    /**\n",[m
[31m-       "     * Register the mime type and append_mime function with output_area\n",[m
[31m-       "     */\n",[m
[31m-       "    OutputArea.prototype.register_mime_type(EXEC_MIME_TYPE, append_mime, {\n",[m
[31m-       "      /* Is output safe? */\n",[m
[31m-       "      safe: true,\n",[m
[31m-       "      /* Index of renderer in `output_area.display_order` */\n",[m
[31m-       "      index: 0\n",[m
[31m-       "    });\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  // register the mime type if in Jupyter Notebook environment and previously unregistered\n",[m
[31m-       "  if (root.Jupyter !== undefined) {\n",[m
[31m-       "    const events = require('base/js/events');\n",[m
[31m-       "    const OutputArea = require('notebook/js/outputarea').OutputArea;\n",[m
[31m-       "\n",[m
[31m-       "    if (OutputArea.prototype.mime_types().indexOf(EXEC_MIME_TYPE) == -1) {\n",[m
[31m-       "      register_renderer(events, OutputArea);\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "  if (typeof (root._bokeh_timeout) === \"undefined\" || force === true) {\n",[m
[31m-       "    root._bokeh_timeout = Date.now() + 5000;\n",[m
[31m-       "    root._bokeh_failed_load = false;\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  const NB_LOAD_WARNING = {'data': {'text/html':\n",[m
[31m-       "     \"<div style='background-color: #fdd'>\\n\"+\n",[m
[31m-       "     \"<p>\\n\"+\n",[m
[31m-       "     \"BokehJS does not appear to have successfully loaded. If loading BokehJS from CDN, this \\n\"+\n",[m
[31m-       "     \"may be due to a slow or bad network connection. Possible fixes:\\n\"+\n",[m
[31m-       "     \"</p>\\n\"+\n",[m
[31m-       "     \"<ul>\\n\"+\n",[m
[31m-       "     \"<li>re-rerun `output_notebook()` to attempt to load from CDN again, or</li>\\n\"+\n",[m
[31m-       "     \"<li>use INLINE resources instead, as so:</li>\\n\"+\n",[m
[31m-       "     \"</ul>\\n\"+\n",[m
[31m-       "     \"<code>\\n\"+\n",[m
[31m-       "     \"from bokeh.resources import INLINE\\n\"+\n",[m
[31m-       "     \"output_notebook(resources=INLINE)\\n\"+\n",[m
[31m-       "     \"</code>\\n\"+\n",[m
[31m-       "     \"</div>\"}};\n",[m
[31m-       "\n",[m
[31m-       "  function display_loaded() {\n",[m
[31m-       "    const el = document.getElementById(\"p1483\");\n",[m
[31m-       "    if (el != null) {\n",[m
[31m-       "      el.textContent = \"BokehJS is loading...\";\n",[m
[31m-       "    }\n",[m
[31m-       "    if (root.Bokeh !== undefined) {\n",[m
[31m-       "      if (el != null) {\n",[m
[31m-       "        el.textContent = \"BokehJS \" + root.Bokeh.version + \" successfully loaded.\";\n",[m
[31m-       "      }\n",[m
[31m-       "    } else if (Date.now() < root._bokeh_timeout) {\n",[m
[31m-       "      setTimeout(display_loaded, 100)\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  function run_callbacks() {\n",[m
[31m-       "    try {\n",[m
[31m-       "      root._bokeh_onload_callbacks.forEach(function(callback) {\n",[m
[31m-       "        if (callback != null)\n",[m
[31m-       "          callback();\n",[m
[31m-       "      });\n",[m
[31m-       "    } finally {\n",[m
[31m-       "      delete root._bokeh_onload_callbacks\n",[m
[31m-       "    }\n",[m
[31m-       "    console.debug(\"Bokeh: all callbacks have finished\");\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  function load_libs(css_urls, js_urls, callback) {\n",[m
[31m-       "    if (css_urls == null) css_urls = [];\n",[m
[31m-       "    if (js_urls == null) js_urls = [];\n",[m
[31m-       "\n",[m
[31m-       "    root._bokeh_onload_callbacks.push(callback);\n",[m
[31m-       "    if (root._bokeh_is_loading > 0) {\n",[m
[31m-       "      console.debug(\"Bokeh: BokehJS is being loaded, scheduling callback at\", now());\n",[m
[31m-       "      return null;\n",[m
[31m-       "    }\n",[m
[31m-       "    if (js_urls == null || js_urls.length === 0) {\n",[m
[31m-       "      run_callbacks();\n",[m
[31m-       "      return null;\n",[m
[31m-       "    }\n",[m
[31m-       "    console.debug(\"Bokeh: BokehJS not loaded, scheduling load and callback at\", now());\n",[m
[31m-       "    root._bokeh_is_loading = css_urls.length + js_urls.length;\n",[m
[31m-       "\n",[m
[31m-       "    function on_load() {\n",[m
[31m-       "      root._bokeh_is_loading--;\n",[m
[31m-       "      if (root._bokeh_is_loading === 0) {\n",[m
[31m-       "        console.debug(\"Bokeh: all BokehJS libraries/stylesheets loaded\");\n",[m
[31m-       "        run_callbacks()\n",[m
[31m-       "      }\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    function on_error(url) {\n",[m
[31m-       "      console.error(\"failed to load \" + url);\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    for (let i = 0; i < css_urls.length; i++) {\n",[m
[31m-       "      const url = css_urls[i];\n",[m
[31m-       "      const element = document.createElement(\"link\");\n",[m
[31m-       "      element.onload = on_load;\n",[m
[31m-       "      element.onerror = on_error.bind(null, url);\n",[m
[31m-       "      element.rel = \"stylesheet\";\n",[m
[31m-       "      element.type = \"text/css\";\n",[m
[31m-       "      element.href = url;\n",[m
[31m-       "      console.debug(\"Bokeh: injecting link tag for BokehJS stylesheet: \", url);\n",[m
[31m-       "      document.body.appendChild(element);\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    for (let i = 0; i < js_urls.length; i++) {\n",[m
[31m-       "      const url = js_urls[i];\n",[m
[31m-       "      const element = document.createElement('script');\n",[m
[31m-       "      element.onload = on_load;\n",[m
[31m-       "      element.onerror = on_error.bind(null, url);\n",[m
[31m-       "      element.async = false;\n",[m
[31m-       "      element.src = url;\n",[m
[31m-       "      console.debug(\"Bokeh: injecting script tag for BokehJS library: \", url);\n",[m
[31m-       "      document.head.appendChild(element);\n",[m
[31m-       "    }\n",[m
[31m-       "  };\n",[m
[31m-       "\n",[m
[31m-       "  function inject_raw_css(css) {\n",[m
[31m-       "    const element = document.createElement(\"style\");\n",[m
[31m-       "    element.appendChild(document.createTextNode(css));\n",[m
[31m-       "    document.body.appendChild(element);\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  const js_urls = [\"https://cdn.bokeh.org/bokeh/release/bokeh-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-gl-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-widgets-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-tables-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-mathjax-3.0.3.min.js\"];\n",[m
[31m-       "  const css_urls = [];\n",[m
[31m-       "\n",[m
[31m-       "  const inline_js = [    function(Bokeh) {\n",[m
[31m-       "      Bokeh.set_log_level(\"info\");\n",[m
[31m-       "    },\n",[m
[31m-       "function(Bokeh) {\n",[m
[31m-       "    }\n",[m
[31m-       "  ];\n",[m
[31m-       "\n",[m
[31m-       "  function run_inline_js() {\n",[m
[31m-       "    if (root.Bokeh !== undefined || force === true) {\n",[m
[31m-       "          for (let i = 0; i < inline_js.length; i++) {\n",[m
[31m-       "      inline_js[i].call(root, root.Bokeh);\n",[m
[31m-       "    }\n",[m
[31m-       "if (force === true) {\n",[m
[31m-       "        display_loaded();\n",[m
[31m-       "      }} else if (Date.now() < root._bokeh_timeout) {\n",[m
[31m-       "      setTimeout(run_inline_js, 100);\n",[m
[31m-       "    } else if (!root._bokeh_failed_load) {\n",[m
[31m-       "      console.log(\"Bokeh: BokehJS failed to load within specified timeout.\");\n",[m
[31m-       "      root._bokeh_failed_load = true;\n",[m
[31m-       "    } else if (force !== true) {\n",[m
[31m-       "      const cell = $(document.getElementById(\"p1483\")).parents('.cell').data().cell;\n",[m
[31m-       "      cell.output_area.append_execute_result(NB_LOAD_WARNING)\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  if (root._bokeh_is_loading === 0) {\n",[m
[31m-       "    console.debug(\"Bokeh: BokehJS loaded, going straight to plotting\");\n",[m
[31m-       "    run_inline_js();\n",[m
[31m-       "  } else {\n",[m
[31m-       "    load_libs(css_urls, js_urls, function() {\n",[m
[31m-       "      console.debug(\"Bokeh: BokehJS plotting callback run at\", now());\n",[m
[31m-       "      run_inline_js();\n",[m
[31m-       "    });\n",[m
[31m-       "  }\n",[m
[31m-       "}(window));"[m
[31m-      ],[m
[31m-      "application/vnd.bokehjs_load.v0+json": "(function(root) {\n  function now() {\n    return new Date();\n  }\n\n  const force = true;\n\n  if (typeof root._bokeh_onload_callbacks === \"undefined\" || force === true) {\n    root._bokeh_onload_callbacks = [];\n    root._bokeh_is_loading = undefined;\n  }\n\n\n  if (typeof (root._bokeh_timeout) === \"undefined\" || force === true) {\n    root._bokeh_timeout = Date.now() + 5000;\n    root._bokeh_failed_load = false;\n  }\n\n  const NB_LOAD_WARNING = {'data': {'text/html':\n     \"<div style='background-color: #fdd'>\\n\"+\n     \"<p>\\n\"+\n     \"BokehJS does not appear to have successfully loaded. If loading BokehJS from CDN, this \\n\"+\n     \"may be due to a slow or bad network connection. Possible fixes:\\n\"+\n     \"</p>\\n\"+\n     \"<ul>\\n\"+\n     \"<li>re-rerun `output_notebook()` to attempt to load from CDN again, or</li>\\n\"+\n     \"<li>use INLINE resources instead, as so:</li>\\n\"+\n     \"</ul>\\n\"+\n     \"<code>\\n\"+\n     \"from bokeh.resources import INLINE\\n\"+\n     \"output_notebook(resources=INLINE)\\n\"+\n     \"</code>\\n\"+\n     \"</div>\"}};\n\n  function display_loaded() {\n    const el = document.getElementById(\"p1483\");\n    if (el != null) {\n      el.textContent = \"BokehJS is loading...\";\n    }\n    if (root.Bokeh !== undefined) {\n      if (el != null) {\n        el.textContent = \"BokehJS \" + root.Bokeh.version + \" successfully loaded.\";\n      }\n    } else if (Date.now() < root._bokeh_timeout) {\n      setTimeout(display_loaded, 100)\n    }\n  }\n\n  function run_callbacks() {\n    try {\n      root._bokeh_onload_callbacks.forEach(function(callback) {\n        if (callback != null)\n          callback();\n      });\n    } finally {\n      delete root._bokeh_onload_callbacks\n    }\n    console.debug(\"Bokeh: all callbacks have finished\");\n  }\n\n  function load_libs(css_urls, js_urls, callback) {\n    if (css_urls == null) css_urls = [];\n    if (js_urls == null) js_urls = [];\n\n    root._bokeh_onload_callbacks.push(callback);\n    if (root._bokeh_is_loading > 0) {\n      console.debug(\"Bokeh: BokehJS is being loaded, scheduling callback at\", now());\n      return null;\n    }\n    if (js_urls == null || js_urls.length === 0) {\n      run_callbacks();\n      return null;\n    }\n    console.debug(\"Bokeh: BokehJS not loaded, scheduling load and callback at\", now());\n    root._bokeh_is_loading = css_urls.length + js_urls.length;\n\n    function on_load() {\n      root._bokeh_is_loading--;\n      if (root._bokeh_is_loading === 0) {\n        console.debug(\"Bokeh: all BokehJS libraries/stylesheets loaded\");\n        run_callbacks()\n      }\n    }\n\n    function on_error(url) {\n      console.error(\"failed to load \" + url);\n    }\n\n    for (let i = 0; i < css_urls.length; i++) {\n      const url = css_urls[i];\n      const element = document.createElement(\"link\");\n      element.onload = on_load;\n      element.onerror = on_error.bind(null, url);\n      element.rel = \"stylesheet\";\n      element.type = \"text/css\";\n      element.href = url;\n      console.debug(\"Bokeh: injecting link tag for BokehJS stylesheet: \", url);\n      document.body.appendChild(element);\n    }\n\n    for (let i = 0; i < js_urls.length; i++) {\n      const url = js_urls[i];\n      const element = document.createElement('script');\n      element.onload = on_load;\n      element.onerror = on_error.bind(null, url);\n      element.async = false;\n      element.src = url;\n      console.debug(\"Bokeh: injecting script tag for BokehJS library: \", url);\n      document.head.appendChild(element);\n    }\n  };\n\n  function inject_raw_css(css) {\n    const element = document.createElement(\"style\");\n    element.appendChild(document.createTextNode(css));\n    document.body.appendChild(element);\n  }\n\n  const js_urls = [\"https://cdn.bokeh.org/bokeh/release/bokeh-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-gl-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-widgets-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-tables-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-mathjax-3.0.3.min.js\"];\n  const css_urls = [];\n\n  const inline_js = [    function(Bokeh) {\n      Bokeh.set_log_level(\"info\");\n    },\nfunction(Bokeh) {\n    }\n  ];\n\n  function run_inline_js() {\n    if (root.Bokeh !== undefined || force === true) {\n          for (let i = 0; i < inline_js.length; i++) {\n      inline_js[i].call(root, root.Bokeh);\n    }\nif (force === true) {\n        display_loaded();\n      }} else if (Date.now() < root._bokeh_timeout) {\n      setTimeout(run_inline_js, 100);\n    } else if (!root._bokeh_failed_load) {\n      console.log(\"Bokeh: BokehJS failed to load within specified timeout.\");\n      root._bokeh_failed_load = true;\n    } else if (force !== true) {\n      const cell = $(document.getElementById(\"p1483\")).parents('.cell').data().cell;\n      cell.output_area.append_execute_result(NB_LOAD_WARNING)\n    }\n  }\n\n  if (root._bokeh_is_loading === 0) {\n    console.debug(\"Bokeh: BokehJS loaded, going straight to plotting\");\n    run_inline_js();\n  } else {\n    load_libs(css_urls, js_urls, function() {\n      console.debug(\"Bokeh: BokehJS plotting callback run at\", now());\n      run_inline_js();\n    });\n  }\n}(window));"[m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    },[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "text/html": [[m
[31m-       "\n",[m
[31m-       "  <div id=\"e976a198-0d51-43de-8382-4201e9f92cc6\" data-root-id=\"p1487\" style=\"display: contents;\"></div>\n"[m
[31m-      ][m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    },[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "application/javascript": [[m
[31m-       "(function(root) {\n",[m
[31m-       "  function embed_document(root) {\n",[m
[31m-       "  const docs_json = {\"8d151f75-74e3-454e-9286-4502bac1942c\":{\"version\":\"3.0.3\",\"title\":\"Bokeh Application\",\"defs\":[],\"roots\":[{\"type\":\"object\",\"name\":\"Figure\",\"id\":\"p1487\",\"attributes\":{\"x_range\":{\"type\":\"object\",\"name\":\"Range1d\",\"id\":\"p1496\",\"attributes\":{\"end\":6}},\"y_range\":{\"type\":\"object\",\"name\":\"Range1d\",\"id\":\"p1498\",\"attributes\":{\"end\":10}},\"x_scale\":{\"type\":\"object\",\"name\":\"LinearScale\",\"id\":\"p1500\"},\"y_scale\":{\"type\":\"object\",\"name\":\"LinearScale\",\"id\":\"p1502\"},\"title\":{\"type\":\"object\",\"name\":\"Title\",\"id\":\"p1495\"},\"renderers\":[{\"type\":\"object\",\"name\":\"GlyphRenderer\",\"id\":\"p1539\",\"attributes\":{\"data_source\":{\"type\":\"object\",\"name\":\"ColumnDataSource\",\"id\":\"p1484\",\"attributes\":{\"selected\":{\"type\":\"object\",\"name\":\"Selection\",\"id\":\"p1485\",\"attributes\":{\"indices\":[],\"line_indices\":[]}},\"selection_policy\":{\"type\":\"object\",\"name\":\"UnionRenderers\",\"id\":\"p1486\"},\"data\":{\"type\":\"map\",\"entries\":[[\"x\",[1,2,3,4,5]],[\"y\",[6,4,7,8,9]],[\"color\",[\"red\",\"green\",\"blue\",\"orange\",\"purple\"]]]}}},\"view\":{\"type\":\"object\",\"name\":\"CDSView\",\"id\":\"p1540\",\"attributes\":{\"filter\":{\"type\":\"object\",\"name\":\"AllIndices\",\"id\":\"p1541\"}}},\"glyph\":{\"type\":\"object\",\"name\":\"Circle\",\"id\":\"p1536\",\"attributes\":{\"x\":{\"type\":\"field\",\"field\":\"x\"},\"y\":{\"type\":\"field\",\"field\":\"y\"},\"size\":{\"type\":\"value\",\"value\":20},\"line_color\":{\"type\":\"field\",\"field\":\"color\"},\"fill_color\":{\"type\":\"field\",\"field\":\"color\"},\"hatch_color\":{\"type\":\"field\",\"field\":\"color\"}}},\"nonselection_glyph\":{\"type\":\"object\",\"name\":\"Circle\",\"id\":\"p1537\",\"attributes\":{\"x\":{\"type\":\"field\",\"field\":\"x\"},\"y\":{\"type\":\"field\",\"field\":\"y\"},\"size\":{\"type\":\"value\",\"value\":20},\"line_color\":{\"type\":\"field\",\"field\":\"color\"},\"line_alpha\":{\"type\":\"value\",\"value\":0.1},\"fill_color\":{\"type\":\"field\",\"field\":\"color\"},\"fill_alpha\":{\"type\":\"value\",\"value\":0.1},\"hatch_color\":{\"type\":\"field\",\"field\":\"color\"},\"hatch_alpha\":{\"type\":\"value\",\"value\":0.1}}},\"muted_glyph\":{\"type\":\"object\",\"name\":\"Circle\",\"id\":\"p1538\",\"attributes\":{\"x\":{\"type\":\"field\",\"field\":\"x\"},\"y\":{\"type\":\"field\",\"field\":\"y\"},\"size\":{\"type\":\"value\",\"value\":20},\"line_color\":{\"type\":\"field\",\"field\":\"color\"},\"line_alpha\":{\"type\":\"value\",\"value\":0.2},\"fill_color\":{\"type\":\"field\",\"field\":\"color\"},\"fill_alpha\":{\"type\":\"value\",\"value\":0.2},\"hatch_color\":{\"type\":\"field\",\"field\":\"color\"},\"hatch_alpha\":{\"type\":\"value\",\"value\":0.2}}}}}],\"toolbar\":{\"type\":\"object\",\"name\":\"Toolbar\",\"id\":\"p1490\",\"attributes\":{\"tools\":[{\"type\":\"object\",\"name\":\"PanTool\",\"id\":\"p1518\"},{\"type\":\"object\",\"name\":\"WheelZoomTool\",\"id\":\"p1519\"},{\"type\":\"object\",\"name\":\"BoxZoomTool\",\"id\":\"p1520\",\"attributes\":{\"overlay\":{\"type\":\"object\",\"name\":\"BoxAnnotation\",\"id\":\"p1521\",\"attributes\":{\"syncable\":false,\"level\":\"overlay\",\"visible\":false,\"left_units\":\"canvas\",\"right_units\":\"canvas\",\"bottom_units\":\"canvas\",\"top_units\":\"canvas\",\"line_color\":\"black\",\"line_alpha\":1.0,\"line_width\":2,\"line_dash\":[4,4],\"fill_color\":\"lightgrey\",\"fill_alpha\":0.5}}}},{\"type\":\"object\",\"name\":\"SaveTool\",\"id\":\"p1522\"},{\"type\":\"object\",\"name\":\"ResetTool\",\"id\":\"p1523\"},{\"type\":\"object\",\"name\":\"HelpTool\",\"id\":\"p1524\"}]}},\"left\":[{\"type\":\"object\",\"name\":\"LinearAxis\",\"id\":\"p1511\",\"attributes\":{\"ticker\":{\"type\":\"object\",\"name\":\"BasicTicker\",\"id\":\"p1512\",\"attributes\":{\"mantissas\":[1,2,5]}},\"formatter\":{\"type\":\"object\",\"name\":\"BasicTickFormatter\",\"id\":\"p1513\"},\"major_label_policy\":{\"type\":\"object\",\"name\":\"AllLabels\",\"id\":\"p1514\"}}}],\"below\":[{\"type\":\"object\",\"name\":\"LinearAxis\",\"id\":\"p1504\",\"attributes\":{\"ticker\":{\"type\":\"object\",\"name\":\"BasicTicker\",\"id\":\"p1505\",\"attributes\":{\"mantissas\":[1,2,5]}},\"formatter\":{\"type\":\"object\",\"name\":\"BasicTickFormatter\",\"id\":\"p1506\"},\"major_label_policy\":{\"type\":\"object\",\"name\":\"AllLabels\",\"id\":\"p1507\"}}}],\"center\":[{\"type\":\"object\",\"name\":\"Grid\",\"id\":\"p1510\",\"attributes\":{\"axis\":{\"id\":\"p1504\"}}},{\"type\":\"object\",\"name\":\"Grid\",\"id\":\"p1517\",\"attributes\":{\"dimension\":1,\"axis\":{\"id\":\"p1511\"}}}]}}]}};\n",[m
[31m-       "  const render_items = [{\"docid\":\"8d151f75-74e3-454e-9286-4502bac1942c\",\"roots\":{\"p1487\":\"e976a198-0d51-43de-8382-4201e9f92cc6\"},\"root_ids\":[\"p1487\"]}];\n",[m
[31m-       "  root.Bokeh.embed.embed_items_notebook(docs_json, render_items);\n",[m
[31m-       "  }\n",[m
[31m-       "  if (root.Bokeh !== undefined) {\n",[m
[31m-       "    embed_document(root);\n",[m
[31m-       "  } else {\n",[m
[31m-       "    let attempts = 0;\n",[m
[31m-       "    const timer = setInterval(function(root) {\n",[m
[31m-       "      if (root.Bokeh !== undefined) {\n",[m
[31m-       "        clearInterval(timer);\n",[m
[31m-       "        embed_document(root);\n",[m
[31m-       "      } else {\n",[m
[31m-       "        attempts++;\n",[m
[31m-       "        if (attempts > 100) {\n",[m
[31m-       "          clearInterval(timer);\n",[m
[31m-       "          console.log(\"Bokeh: ERROR: Unable to run BokehJS code because BokehJS library is missing\");\n",[m
[31m-       "        }\n",[m
[31m-       "      }\n",[m
[31m-       "    }, 10, root)\n",[m
[31m-       "  }\n",[m
[31m-       "})(window);"[m
[31m-      ],[m
[31m-      "application/vnd.bokehjs_exec.v0+json": ""[m
[31m-     },[m
[31m-     "metadata": {[m
[31m-      "application/vnd.bokehjs_exec.v0+json": {[m
[31m-       "id": "p1487"[m
[31m-      }[m
[31m-     },[m
[31m-     "output_type": "display_data"[m
[31m-    }[m
[31m-   ],[m
[31m-   "source": [[m
[31m-    "# Q2. What are glyphs in Bokeh, and how can you add them to a Bokeh plot? Explain with an example.\n",[m
[31m-    "# Ans-> \n",[m
[31m-    "# 1) In Bokeh, glyphs are visual shapes or markers that can be used to represent data in a plot.\n",[m
[31m-    "# 2) They include squares, circles, triangles, lines, and many others.\n",[m
[31m-    "# 3) Glyphs can be added to a Bokeh plot by creating a glyph renderer and adding it to the plot.\n",[m
[31m-    "# Example\n",[m
[31m-    "from bokeh.plotting import figure, show\n",[m
[31m-    "import bokeh.io as bo\n",[m
[31m-    "import bokeh.plotting as bp\n",[m
[31m-    "from bokeh.models import ColumnDataSource\n",[m
[31m-    "bo.output_notebook()\n",[m
[31m-    "source = ColumnDataSource(data={\n",[m
[31m-    "    'x': [1, 2, 3, 4, 5],\n",[m
[31m-    "    'y': [6, 4, 7, 8, 9],\n",[m
[31m-    "    'color': ['red', 'green', 'blue', 'orange', 'purple']\n",[m
[31m-    "})\n",[m
[31m-    "p = figure(x_range=(0, 6), y_range=(0, 10))\n",[m
[31m-    "p.circle('x', 'y', size=20, color='color', source=source)\n",[m
[31m-    "show(p)"[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "markdown",[m
[31m-   "id": "1da4156f-1da1-417e-9715-6ddcdd2609de",[m
[31m-   "metadata": {},[m
[31m-   "source": [[m
[31m-    "Q3. How can you customize the appearance of a Bokeh plot, including the axes, title, and legend?\n",[m
[31m-    "Ans->\n",[m
[31m-    "1) Changing the title: You can set the title of a plot using the title attribute of the figure object.\n",[m
[31m-    "2) Changing the axes labels: You can set the labels for the x and y axes using the xaxis and yaxis attributes of the figure object.\n",[m
[31m-    "3) Changing the legend: You can customize the legend of a plot using the legend attribute of the figure object.\n"[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "markdown",[m
[31m-   "id": "0e4b5d2f-ca71-4ce9-af78-b3d0a1678b0c",[m
[31m-   "metadata": {},[m
[31m-   "source": [[m
[31m-    "Q4. What is a Bokeh server, and how can you use it to create interactive plots that can be updated in\n",[m
[31m-    "real time?\n",[m
[31m-    "Ans->\n",[m
[31m-    "1) A Bokeh server is a Python process that runs a Bokeh application, which can create and update interactive plots in real-time.\n",[m
[31m-    "2) The Bokeh server allows users to create interactive web-based applications using Bokeh, which can be accessed through a web browser.\n",[m
[31m-    "3) To use the Bokeh server, you first need to create a Bokeh application using the curdoc() function from the bokeh.io module.\n",[m
[31m-    "4) This function returns the current document for the Bokeh application. You can then add Bokeh models, such as plots, layouts, widgets, and callbacks, to the document.\n",[m
[31m-    "5) Once you have created the Bokeh application, you can start the Bokeh server using the bokeh serve command in the terminal or command prompt. \n",[m
[31m-    "6) This command takes the path to the directory containing the Bokeh application as an argument.\n",[m
[31m-    "7) Once the server is started, you can access the Bokeh application in a web browser by navigating to the URL specified by the server."[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "markdown",[m
[31m-   "id": "cb2020cd-dc27-4ef2-981c-e2555d77fbed",[m
[31m-   "metadata": {},[m
[31m-   "source": [[m
[31m-    "Q5. How can you embed a Bokeh plot into a web page or dashboard using Flask or Django?\n",[m
[31m-    "Ans->\n",[m
[31m-    "1) Create a Bokeh plot using the Bokeh library in Python.\n",[m
[31m-    "2) Convert the Bokeh plot into HTML code using the bokeh.embed module.\n",[m
[31m-    "3) Create a Flask or Django web application that serves the HTML code of the Bokeh plot.\n",[m
[31m-    "4) Embed the HTML code of the Bokeh plot in the web page or dashboard using an iframe."[m
[31m-   ][m
[31m-  }[m
[31m- ],[m
[31m- "metadata": {[m
[31m-  "kernelspec": {[m
[31m-   "display_name": "Python 3 (ipykernel)",[m
[31m-   "language": "python",[m
[31m-   "name": "python3"[m
[31m-  },[m
[31m-  "language_info": {[m
[31m-   "codemirror_mode": {[m
[31m-    "name": "ipython",[m
[31m-    "version": 3[m
[31m-   },[m
[31m-   "file_extension": ".py",[m
[31m-   "mimetype": "text/x-python",[m
[31m-   "name": "python",[m
[31m-   "nbconvert_exporter": "python",[m
[31m-   "pygments_lexer": "ipython3",[m
[31m-   "version": "3.10.8"[m
[31m-  }[m
[31m- },[m
[31m- "nbformat": 4,[m
[31m- "nbformat_minor": 5[m
[31m-}[m
[1mdiff --git a/bokeh.ipynb b/bokeh.ipynb[m
[1mdeleted file mode 100644[m
[1mindex 484e11d..0000000[m
[1m--- a/bokeh.ipynb[m
[1m+++ /dev/null[m
[36m@@ -1,481 +0,0 @@[m
[31m-{[m
[31m- "cells": [[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": 7,[m
[31m-   "id": "6945debb-de3d-4f08-a232-48fa91ecaa6b",[m
[31m-   "metadata": {},[m
[31m-   "outputs": [[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "text/html": [[m
[31m-       "<style>\n",[m
[31m-       "        .bk-notebook-logo {\n",[m
[31m-       "            display: block;\n",[m
[31m-       "            width: 20px;\n",[m
[31m-       "            height: 20px;\n",[m
[31m-       "            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAOkSURBVDiNjZRtaJVlGMd/1/08zzln5zjP1LWcU9N0NkN8m2CYjpgQYQXqSs0I84OLIC0hkEKoPtiH3gmKoiJDU7QpLgoLjLIQCpEsNJ1vqUOdO7ppbuec5+V+rj4ctwzd8IIbbi6u+8f1539dt3A78eXC7QizUF7gyV1fD1Yqg4JWz84yffhm0qkFqBogB9rM8tZdtwVsPUhWhGcFJngGeWrPzHm5oaMmkfEg1usvLFyc8jLRqDOMru7AyC8saQr7GG7f5fvDeH7Ej8CM66nIF+8yngt6HWaKh7k49Soy9nXurCi1o3qUbS3zWfrYeQDTB/Qj6kX6Ybhw4B+bOYoLKCC9H3Nu/leUTZ1JdRWkkn2ldcCamzrcf47KKXdAJllSlxAOkRgyHsGC/zRday5Qld9DyoM4/q/rUoy/CXh3jzOu3bHUVZeU+DEn8FInkPBFlu3+nW3Nw0mk6vCDiWg8CeJaxEwuHS3+z5RgY+YBR6V1Z1nxSOfoaPa4LASWxxdNp+VWTk7+4vzaou8v8PN+xo+KY2xsw6une2frhw05CTYOmQvsEhjhWjn0bmXPjpE1+kplmmkP3suftwTubK9Vq22qKmrBhpY4jvd5afdRA3wGjFAgcnTK2s4hY0/GPNIb0nErGMCRxWOOX64Z8RAC4oCXdklmEvcL8o0BfkNK4lUg9HTl+oPlQxdNo3Mg4Nv175e/1LDGzZen30MEjRUtmXSfiTVu1kK8W4txyV6BMKlbgk3lMwYCiusNy9fVfvvwMxv8Ynl6vxoByANLTWplvuj/nF9m2+PDtt1eiHPBr1oIfhCChQMBw6Aw0UulqTKZdfVvfG7VcfIqLG9bcldL/+pdWTLxLUy8Qq38heUIjh4XlzZxzQm19lLFlr8vdQ97rjZVOLf8nclzckbcD4wxXMidpX30sFd37Fv/GtwwhzhxGVAprjbg0gCAEeIgwCZyTV2Z1REEW8O4py0wsjeloKoMr6iCY6dP92H6Vw/oTyICIthibxjm/DfN9lVz8IqtqKYLUXfoKVMVQVVJOElGjrnnUt9T9wbgp8AyYKaGlqingHZU/uG2NTZSVqwHQTWkx9hxjkpWDaCg6Ckj5qebgBVbT3V3NNXMSiWSDdGV3hrtzla7J+duwPOToIg42ChPQOQjspnSlp1V+Gjdged7+8UN5CRAV7a5EdFNwCjEaBR27b3W890TE7g24NAP/mMDXRWrGoFPQI9ls/MWO2dWFAar/xcOIImbbpA3zgAAAABJRU5ErkJggg==);\n",[m
[31m-       "        }\n",[m
[31m-       "    </style>\n",[m
[31m-       "    <div>\n",[m
[31m-       "        <a href=\"https://bokeh.org\" target=\"_blank\" class=\"bk-notebook-logo\"></a>\n",[m
[31m-       "        <span id=\"p1006\">Loading BokehJS ...</span>\n",[m
[31m-       "    </div>\n"[m
[31m-      ][m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    },[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "application/javascript": [[m
[31m-       "(function(root) {\n",[m
[31m-       "  function now() {\n",[m
[31m-       "    return new Date();\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  const force = true;\n",[m
[31m-       "\n",[m
[31m-       "  if (typeof root._bokeh_onload_callbacks === \"undefined\" || force === true) {\n",[m
[31m-       "    root._bokeh_onload_callbacks = [];\n",[m
[31m-       "    root._bokeh_is_loading = undefined;\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "const JS_MIME_TYPE = 'application/javascript';\n",[m
[31m-       "  const HTML_MIME_TYPE = 'text/html';\n",[m
[31m-       "  const EXEC_MIME_TYPE = 'application/vnd.bokehjs_exec.v0+json';\n",[m
[31m-       "  const CLASS_NAME = 'output_bokeh rendered_html';\n",[m
[31m-       "\n",[m
[31m-       "  /**\n",[m
[31m-       "   * Render data to the DOM node\n",[m
[31m-       "   */\n",[m
[31m-       "  function render(props, node) {\n",[m
[31m-       "    const script = document.createElement(\"script\");\n",[m
[31m-       "    node.appendChild(script);\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  /**\n",[m
[31m-       "   * Handle when an output is cleared or removed\n",[m
[31m-       "   */\n",[m
[31m-       "  function handleClearOutput(event, handle) {\n",[m
[31m-       "    const cell = handle.cell;\n",[m
[31m-       "\n",[m
[31m-       "    const id = cell.output_area._bokeh_element_id;\n",[m
[31m-       "    const server_id = cell.output_area._bokeh_server_id;\n",[m
[31m-       "    // Clean up Bokeh references\n",[m
[31m-       "    if (id != null && id in Bokeh.index) {\n",[m
[31m-       "      Bokeh.index[id].model.document.clear();\n",[m
[31m-       "      delete Bokeh.index[id];\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    if (server_id !== undefined) {\n",[m
[31m-       "      // Clean up Bokeh references\n",[m
[31m-       "      const cmd_clean = \"from bokeh.io.state import curstate; print(curstate().uuid_to_server['\" + server_id + \"'].get_sessions()[0].document.roots[0]._id)\";\n",[m
[31m-       "      cell.notebook.kernel.execute(cmd_clean, {\n",[m
[31m-       "        iopub: {\n",[m
[31m-       "          output: function(msg) {\n",[m
[31m-       "            const id = msg.content.text.trim();\n",[m
[31m-       "            if (id in Bokeh.index) {\n",[m
[31m-       "              Bokeh.index[id].model.document.clear();\n",[m
[31m-       "              delete Bokeh.index[id];\n",[m
[31m-       "            }\n",[m
[31m-       "          }\n",[m
[31m-       "        }\n",[m
[31m-       "      });\n",[m
[31m-       "      // Destroy server and session\n",[m
[31m-       "      const cmd_destroy = \"import bokeh.io.notebook as ion; ion.destroy_server('\" + server_id + \"')\";\n",[m
[31m-       "      cell.notebook.kernel.execute(cmd_destroy);\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  /**\n",[m
[31m-       "   * Handle when a new output is added\n",[m
[31m-       "   */\n",[m
[31m-       "  function handleAddOutput(event, handle) {\n",[m
[31m-       "    const output_area = handle.output_area;\n",[m
[31m-       "    const output = handle.output;\n",[m
[31m-       "\n",[m
[31m-       "    // limit handleAddOutput to display_data with EXEC_MIME_TYPE content only\n",[m
[31m-       "    if ((output.output_type != \"display_data\") || (!Object.prototype.hasOwnProperty.call(output.data, EXEC_MIME_TYPE))) {\n",[m
[31m-       "      return\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    const toinsert = output_area.element.find(\".\" + CLASS_NAME.split(' ')[0]);\n",[m
[31m-       "\n",[m
[31m-       "    if (output.metadata[EXEC_MIME_TYPE][\"id\"] !== undefined) {\n",[m
[31m-       "      toinsert[toinsert.length - 1].firstChild.textContent = output.data[JS_MIME_TYPE];\n",[m
[31m-       "      // store reference to embed id on output_area\n",[m
[31m-       "      output_area._bokeh_element_id = output.metadata[EXEC_MIME_TYPE][\"id\"];\n",[m
[31m-       "    }\n",[m
[31m-       "    if (output.metadata[EXEC_MIME_TYPE][\"server_id\"] !== undefined) {\n",[m
[31m-       "      const bk_div = document.createElement(\"div\");\n",[m
[31m-       "      bk_div.innerHTML = output.data[HTML_MIME_TYPE];\n",[m
[31m-       "      const script_attrs = bk_div.children[0].attributes;\n",[m
[31m-       "      for (let i = 0; i < script_attrs.length; i++) {\n",[m
[31m-       "        toinsert[toinsert.length - 1].firstChild.setAttribute(script_attrs[i].name, script_attrs[i].value);\n",[m
[31m-       "        toinsert[toinsert.length - 1].firstChild.textContent = bk_div.children[0].textContent\n",[m
[31m-       "      }\n",[m
[31m-       "      // store reference to server id on output_area\n",[m
[31m-       "      output_area._bokeh_server_id = output.metadata[EXEC_MIME_TYPE][\"server_id\"];\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  function register_renderer(events, OutputArea) {\n",[m
[31m-       "\n",[m
[31m-       "    function append_mime(data, metadata, element) {\n",[m
[31m-       "      // create a DOM node to render to\n",[m
[31m-       "      const toinsert = this.create_output_subarea(\n",[m
[31m-       "        metadata,\n",[m
[31m-       "        CLASS_NAME,\n",[m
[31m-       "        EXEC_MIME_TYPE\n",[m
[31m-       "      );\n",[m
[31m-       "      this.keyboard_manager.register_events(toinsert);\n",[m
[31m-       "      // Render to node\n",[m
[31m-       "      const props = {data: data, metadata: metadata[EXEC_MIME_TYPE]};\n",[m
[31m-       "      render(props, toinsert[toinsert.length - 1]);\n",[m
[31m-       "      element.append(toinsert);\n",[m
[31m-       "      return toinsert\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    /* Handle when an output is cleared or removed */\n",[m
[31m-       "    events.on('clear_output.CodeCell', handleClearOutput);\n",[m
[31m-       "    events.on('delete.Cell', handleClearOutput);\n",[m
[31m-       "\n",[m
[31m-       "    /* Handle when a new output is added */\n",[m
[31m-       "    events.on('output_added.OutputArea', handleAddOutput);\n",[m
[31m-       "\n",[m
[31m-       "    /**\n",[m
[31m-       "     * Register the mime type and append_mime function with output_area\n",[m
[31m-       "     */\n",[m
[31m-       "    OutputArea.prototype.register_mime_type(EXEC_MIME_TYPE, append_mime, {\n",[m
[31m-       "      /* Is output safe? */\n",[m
[31m-       "      safe: true,\n",[m
[31m-       "      /* Index of renderer in `output_area.display_order` */\n",[m
[31m-       "      index: 0\n",[m
[31m-       "    });\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  // register the mime type if in Jupyter Notebook environment and previously unregistered\n",[m
[31m-       "  if (root.Jupyter !== undefined) {\n",[m
[31m-       "    const events = require('base/js/events');\n",[m
[31m-       "    const OutputArea = require('notebook/js/outputarea').OutputArea;\n",[m
[31m-       "\n",[m
[31m-       "    if (OutputArea.prototype.mime_types().indexOf(EXEC_MIME_TYPE) == -1) {\n",[m
[31m-       "      register_renderer(events, OutputArea);\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "  if (typeof (root._bokeh_timeout) === \"undefined\" || force === true) {\n",[m
[31m-       "    root._bokeh_timeout = Date.now() + 5000;\n",[m
[31m-       "    root._bokeh_failed_load = false;\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  const NB_LOAD_WARNING = {'data': {'text/html':\n",[m
[31m-       "     \"<div style='background-color: #fdd'>\\n\"+\n",[m
[31m-       "     \"<p>\\n\"+\n",[m
[31m-       "     \"BokehJS does not appear to have successfully loaded. If loading BokehJS from CDN, this \\n\"+\n",[m
[31m-       "     \"may be due to a slow or bad network connection. Possible fixes:\\n\"+\n",[m
[31m-       "     \"</p>\\n\"+\n",[m
[31m-       "     \"<ul>\\n\"+\n",[m
[31m-       "     \"<li>re-rerun `output_notebook()` to attempt to load from CDN again, or</li>\\n\"+\n",[m
[31m-       "     \"<li>use INLINE resources instead, as so:</li>\\n\"+\n",[m
[31m-       "     \"</ul>\\n\"+\n",[m
[31m-       "     \"<code>\\n\"+\n",[m
[31m-       "     \"from bokeh.resources import INLINE\\n\"+\n",[m
[31m-       "     \"output_notebook(resources=INLINE)\\n\"+\n",[m
[31m-       "     \"</code>\\n\"+\n",[m
[31m-       "     \"</div>\"}};\n",[m
[31m-       "\n",[m
[31m-       "  function display_loaded() {\n",[m
[31m-       "    const el = document.getElementById(\"p1006\");\n",[m
[31m-       "    if (el != null) {\n",[m
[31m-       "      el.textContent = \"BokehJS is loading...\";\n",[m
[31m-       "    }\n",[m
[31m-       "    if (root.Bokeh !== undefined) {\n",[m
[31m-       "      if (el != null) {\n",[m
[31m-       "        el.textContent = \"BokehJS \" + root.Bokeh.version + \" successfully loaded.\";\n",[m
[31m-       "      }\n",[m
[31m-       "    } else if (Date.now() < root._bokeh_timeout) {\n",[m
[31m-       "      setTimeout(display_loaded, 100)\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  function run_callbacks() {\n",[m
[31m-       "    try {\n",[m
[31m-       "      root._bokeh_onload_callbacks.forEach(function(callback) {\n",[m
[31m-       "        if (callback != null)\n",[m
[31m-       "          callback();\n",[m
[31m-       "      });\n",[m
[31m-       "    } finally {\n",[m
[31m-       "      delete root._bokeh_onload_callbacks\n",[m
[31m-       "    }\n",[m
[31m-       "    console.debug(\"Bokeh: all callbacks have finished\");\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  function load_libs(css_urls, js_urls, callback) {\n",[m
[31m-       "    if (css_urls == null) css_urls = [];\n",[m
[31m-       "    if (js_urls == null) js_urls = [];\n",[m
[31m-       "\n",[m
[31m-       "    root._bokeh_onload_callbacks.push(callback);\n",[m
[31m-       "    if (root._bokeh_is_loading > 0) {\n",[m
[31m-       "      console.debug(\"Bokeh: BokehJS is being loaded, scheduling callback at\", now());\n",[m
[31m-       "      return null;\n",[m
[31m-       "    }\n",[m
[31m-       "    if (js_urls == null || js_urls.length === 0) {\n",[m
[31m-       "      run_callbacks();\n",[m
[31m-       "      return null;\n",[m
[31m-       "    }\n",[m
[31m-       "    console.debug(\"Bokeh: BokehJS not loaded, scheduling load and callback at\", now());\n",[m
[31m-       "    root._bokeh_is_loading = css_urls.length + js_urls.length;\n",[m
[31m-       "\n",[m
[31m-       "    function on_load() {\n",[m
[31m-       "      root._bokeh_is_loading--;\n",[m
[31m-       "      if (root._bokeh_is_loading === 0) {\n",[m
[31m-       "        console.debug(\"Bokeh: all BokehJS libraries/stylesheets loaded\");\n",[m
[31m-       "        run_callbacks()\n",[m
[31m-       "      }\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    function on_error(url) {\n",[m
[31m-       "      console.error(\"failed to load \" + url);\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    for (let i = 0; i < css_urls.length; i++) {\n",[m
[31m-       "      const url = css_urls[i];\n",[m
[31m-       "      const element = document.createElement(\"link\");\n",[m
[31m-       "      element.onload = on_load;\n",[m
[31m-       "      element.onerror = on_error.bind(null, url);\n",[m
[31m-       "      element.rel = \"stylesheet\";\n",[m
[31m-       "      element.type = \"text/css\";\n",[m
[31m-       "      element.href = url;\n",[m
[31m-       "      console.debug(\"Bokeh: injecting link tag for BokehJS stylesheet: \", url);\n",[m
[31m-       "      document.body.appendChild(element);\n",[m
[31m-       "    }\n",[m
[31m-       "\n",[m
[31m-       "    for (let i = 0; i < js_urls.length; i++) {\n",[m
[31m-       "      const url = js_urls[i];\n",[m
[31m-       "      const element = document.createElement('script');\n",[m
[31m-       "      element.onload = on_load;\n",[m
[31m-       "      element.onerror = on_error.bind(null, url);\n",[m
[31m-       "      element.async = false;\n",[m
[31m-       "      element.src = url;\n",[m
[31m-       "      console.debug(\"Bokeh: injecting script tag for BokehJS library: \", url);\n",[m
[31m-       "      document.head.appendChild(element);\n",[m
[31m-       "    }\n",[m
[31m-       "  };\n",[m
[31m-       "\n",[m
[31m-       "  function inject_raw_css(css) {\n",[m
[31m-       "    const element = document.createElement(\"style\");\n",[m
[31m-       "    element.appendChild(document.createTextNode(css));\n",[m
[31m-       "    document.body.appendChild(element);\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  const js_urls = [\"https://cdn.bokeh.org/bokeh/release/bokeh-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-gl-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-widgets-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-tables-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-mathjax-3.0.3.min.js\"];\n",[m
[31m-       "  const css_urls = [];\n",[m
[31m-       "\n",[m
[31m-       "  const inline_js = [    function(Bokeh) {\n",[m
[31m-       "      Bokeh.set_log_level(\"info\");\n",[m
[31m-       "    },\n",[m
[31m-       "function(Bokeh) {\n",[m
[31m-       "    }\n",[m
[31m-       "  ];\n",[m
[31m-       "\n",[m
[31m-       "  function run_inline_js() {\n",[m
[31m-       "    if (root.Bokeh !== undefined || force === true) {\n",[m
[31m-       "          for (let i = 0; i < inline_js.length; i++) {\n",[m
[31m-       "      inline_js[i].call(root, root.Bokeh);\n",[m
[31m-       "    }\n",[m
[31m-       "if (force === true) {\n",[m
[31m-       "        display_loaded();\n",[m
[31m-       "      }} else if (Date.now() < root._bokeh_timeout) {\n",[m
[31m-       "      setTimeout(run_inline_js, 100);\n",[m
[31m-       "    } else if (!root._bokeh_failed_load) {\n",[m
[31m-       "      console.log(\"Bokeh: BokehJS failed to load within specified timeout.\");\n",[m
[31m-       "      root._bokeh_failed_load = true;\n",[m
[31m-       "    } else if (force !== true) {\n",[m
[31m-       "      const cell = $(document.getElementById(\"p1006\")).parents('.cell').data().cell;\n",[m
[31m-       "      cell.output_area.append_execute_result(NB_LOAD_WARNING)\n",[m
[31m-       "    }\n",[m
[31m-       "  }\n",[m
[31m-       "\n",[m
[31m-       "  if (root._bokeh_is_loading === 0) {\n",[m
[31m-       "    console.debug(\"Bokeh: BokehJS loaded, going straight to plotting\");\n",[m
[31m-       "    run_inline_js();\n",[m
[31m-       "  } else {\n",[m
[31m-       "    load_libs(css_urls, js_urls, function() {\n",[m
[31m-       "      console.debug(\"Bokeh: BokehJS plotting callback run at\", now());\n",[m
[31m-       "      run_inline_js();\n",[m
[31m-       "    });\n",[m
[31m-       "  }\n",[m
[31m-       "}(window));"[m
[31m-      ],[m
[31m-      "application/vnd.bokehjs_load.v0+json": "(function(root) {\n  function now() {\n    return new Date();\n  }\n\n  const force = true;\n\n  if (typeof root._bokeh_onload_callbacks === \"undefined\" || force === true) {\n    root._bokeh_onload_callbacks = [];\n    root._bokeh_is_loading = undefined;\n  }\n\n\n  if (typeof (root._bokeh_timeout) === \"undefined\" || force === true) {\n    root._bokeh_timeout = Date.now() + 5000;\n    root._bokeh_failed_load = false;\n  }\n\n  const NB_LOAD_WARNING = {'data': {'text/html':\n     \"<div style='background-color: #fdd'>\\n\"+\n     \"<p>\\n\"+\n     \"BokehJS does not appear to have successfully loaded. If loading BokehJS from CDN, this \\n\"+\n     \"may be due to a slow or bad network connection. Possible fixes:\\n\"+\n     \"</p>\\n\"+\n     \"<ul>\\n\"+\n     \"<li>re-rerun `output_notebook()` to attempt to load from CDN again, or</li>\\n\"+\n     \"<li>use INLINE resources instead, as so:</li>\\n\"+\n     \"</ul>\\n\"+\n     \"<code>\\n\"+\n     \"from bokeh.resources import INLINE\\n\"+\n     \"output_notebook(resources=INLINE)\\n\"+\n     \"</code>\\n\"+\n     \"</div>\"}};\n\n  function display_loaded() {\n    const el = document.getElementById(\"p1006\");\n    if (el != null) {\n      el.textContent = \"BokehJS is loading...\";\n    }\n    if (root.Bokeh !== undefined) {\n      if (el != null) {\n        el.textContent = \"BokehJS \" + root.Bokeh.version + \" successfully loaded.\";\n      }\n    } else if (Date.now() < root._bokeh_timeout) {\n      setTimeout(display_loaded, 100)\n    }\n  }\n\n  function run_callbacks() {\n    try {\n      root._bokeh_onload_callbacks.forEach(function(callback) {\n        if (callback != null)\n          callback();\n      });\n    } finally {\n      delete root._bokeh_onload_callbacks\n    }\n    console.debug(\"Bokeh: all callbacks have finished\");\n  }\n\n  function load_libs(css_urls, js_urls, callback) {\n    if (css_urls == null) css_urls = [];\n    if (js_urls == null) js_urls = [];\n\n    root._bokeh_onload_callbacks.push(callback);\n    if (root._bokeh_is_loading > 0) {\n      console.debug(\"Bokeh: BokehJS is being loaded, scheduling callback at\", now());\n      return null;\n    }\n    if (js_urls == null || js_urls.length === 0) {\n      run_callbacks();\n      return null;\n    }\n    console.debug(\"Bokeh: BokehJS not loaded, scheduling load and callback at\", now());\n    root._bokeh_is_loading = css_urls.length + js_urls.length;\n\n    function on_load() {\n      root._bokeh_is_loading--;\n      if (root._bokeh_is_loading === 0) {\n        console.debug(\"Bokeh: all BokehJS libraries/stylesheets loaded\");\n        run_callbacks()\n      }\n    }\n\n    function on_error(url) {\n      console.error(\"failed to load \" + url);\n    }\n\n    for (let i = 0; i < css_urls.length; i++) {\n      const url = css_urls[i];\n      const element = document.createElement(\"link\");\n      element.onload = on_load;\n      element.onerror = on_error.bind(null, url);\n      element.rel = \"stylesheet\";\n      element.type = \"text/css\";\n      element.href = url;\n      console.debug(\"Bokeh: injecting link tag for BokehJS stylesheet: \", url);\n      document.body.appendChild(element);\n    }\n\n    for (let i = 0; i < js_urls.length; i++) {\n      const url = js_urls[i];\n      const element = document.createElement('script');\n      element.onload = on_load;\n      element.onerror = on_error.bind(null, url);\n      element.async = false;\n      element.src = url;\n      console.debug(\"Bokeh: injecting script tag for BokehJS library: \", url);\n      document.head.appendChild(element);\n    }\n  };\n\n  function inject_raw_css(css) {\n    const element = document.createElement(\"style\");\n    element.appendChild(document.createTextNode(css));\n    document.body.appendChild(element);\n  }\n\n  const js_urls = [\"https://cdn.bokeh.org/bokeh/release/bokeh-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-gl-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-widgets-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-tables-3.0.3.min.js\", \"https://cdn.bokeh.org/bokeh/release/bokeh-mathjax-3.0.3.min.js\"];\n  const css_urls = [];\n\n  const inline_js = [    function(Bokeh) {\n      Bokeh.set_log_level(\"info\");\n    },\nfunction(Bokeh) {\n    }\n  ];\n\n  function run_inline_js() {\n    if (root.Bokeh !== undefined || force === true) {\n          for (let i = 0; i < inline_js.length; i++) {\n      inline_js[i].call(root, root.Bokeh);\n    }\nif (force === true) {\n        display_loaded();\n      }} else if (Date.now() < root._bokeh_timeout) {\n      setTimeout(run_inline_js, 100);\n    } else if (!root._bokeh_failed_load) {\n      console.log(\"Bokeh: BokehJS failed to load within specified timeout.\");\n      root._bokeh_failed_load = true;\n    } else if (force !== true) {\n      const cell = $(document.getElementById(\"p1006\")).parents('.cell').data().cell;\n      cell.output_area.append_execute_result(NB_LOAD_WARNING)\n    }\n  }\n\n  if (root._bokeh_is_loading === 0) {\n    console.debug(\"Bokeh: BokehJS loaded, going straight to plotting\");\n    run_inline_js();\n  } else {\n    load_libs(css_urls, js_urls, function() {\n      console.debug(\"Bokeh: BokehJS plotting callback run at\", now());\n      run_inline_js();\n    });\n  }\n}(window));"[m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    }[m
[31m-   ],[m
[31m-   "source": [[m
[31m-    "import bokeh.io as bo\n",[m
[31m-    "import bokeh.plotting as bp\n",[m
[31m-    "from bokeh.plotting import figure,output_file,show\n",[m
[31m-    "from bokeh.sampledata.iris import flowers\n",[m
[31m-    "bo.output_notebook()"[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": 8,[m
[31m-   "id": "c735b656-eb88-4cb6-883e-c44508832c4d",[m
[31m-   "metadata": {},[m
[31m-   "outputs": [],[m
[31m-   "source": [[m
[31m-    "output_file('test.html')"[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": 11,[m
[31m-   "id": "097bd173-640e-4b8f-9d38-ec64ac4c920d",[m
[31m-   "metadata": {},[m
[31m-   "outputs": [[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "text/html": [[m
[31m-       "\n",[m
[31m-       "  <div id=\"644413dd-37b3-4b5d-b704-31de4ebd3ec8\" data-root-id=\"p1101\" style=\"display: contents;\"></div>\n"[m
[31m-      ][m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    },[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "application/javascript": [[m
[31m-       "(function(root) {\n",[m
[31m-       "  function embed_document(root) {\n",[m
[31m-       "  const docs_json = {\"95a7c408-9bb9-4358-a5f3-79ac8eacb12d\":{\"version\":\"3.0.3\",\"title\":\"Bokeh Application\",\"defs\":[],\"roots\":[{\"type\":\"object\",\"name\":\"Figure\",\"id\":\"p1101\",\"attributes\":{\"x_range\":{\"type\":\"object\",\"name\":\"DataRange1d\",\"id\":\"p1103\"},\"y_range\":{\"type\":\"object\",\"name\":\"DataRange1d\",\"id\":\"p1102\"},\"x_scale\":{\"type\":\"object\",\"name\":\"LinearScale\",\"id\":\"p1115\"},\"y_scale\":{\"type\":\"object\",\"name\":\"LinearScale\",\"id\":\"p1117\"},\"title\":{\"type\":\"object\",\"name\":\"Title\",\"id\":\"p1104\",\"attributes\":{\"text\":\"my first bokeh\"}},\"renderers\":[{\"type\":\"object\",\"name\":\"GlyphRenderer\",\"id\":\"p1154\",\"attributes\":{\"data_source\":{\"type\":\"object\",\"name\":\"ColumnDataSource\",\"id\":\"p1148\",\"attributes\":{\"selected\":{\"type\":\"object\",\"name\":\"Selection\",\"id\":\"p1149\",\"attributes\":{\"indices\":[],\"line_indices\":[]}},\"selection_policy\":{\"type\":\"object\",\"name\":\"UnionRenderers\",\"id\":\"p1150\"},\"data\":{\"type\":\"map\",\"entries\":[[\"x\",{\"type\":\"ndarray\",\"array\":{\"type\":\"bytes\",\"data\":\"ZmZmZmZm9j9mZmZmZmb2P83MzMzMzPQ/AAAAAAAA+D9mZmZmZmb2PzMzMzMzM/s/ZmZmZmZm9j8AAAAAAAD4P2ZmZmZmZvY/AAAAAAAA+D8AAAAAAAD4P5qZmZmZmfk/ZmZmZmZm9j+amZmZmZnxPzMzMzMzM/M/AAAAAAAA+D/NzMzMzMz0P2ZmZmZmZvY/MzMzMzMz+z8AAAAAAAD4PzMzMzMzM/s/AAAAAAAA+D8AAAAAAADwPzMzMzMzM/s/ZmZmZmZm/j+amZmZmZn5P5qZmZmZmfk/AAAAAAAA+D9mZmZmZmb2P5qZmZmZmfk/mpmZmZmZ+T8AAAAAAAD4PwAAAAAAAPg/ZmZmZmZm9j8AAAAAAAD4PzMzMzMzM/M/zczMzMzM9D9mZmZmZmb2P83MzMzMzPQ/AAAAAAAA+D/NzMzMzMz0P83MzMzMzPQ/zczMzMzM9D+amZmZmZn5P2ZmZmZmZv4/ZmZmZmZm9j+amZmZmZn5P2ZmZmZmZvY/AAAAAAAA+D9mZmZmZmb2P83MzMzMzBJAAAAAAAAAEkCamZmZmZkTQAAAAAAAABBAZmZmZmZmEkAAAAAAAAASQM3MzMzMzBJAZmZmZmZmCkBmZmZmZmYSQDMzMzMzMw9AAAAAAAAADEDNzMzMzMwQQAAAAAAAABBAzczMzMzMEkDNzMzMzMwMQJqZmZmZmRFAAAAAAAAAEkBmZmZmZmYQQAAAAAAAABJAMzMzMzMzD0AzMzMzMzMTQAAAAAAAABBAmpmZmZmZE0DNzMzMzMwSQDMzMzMzMxFAmpmZmZmZEUAzMzMzMzMTQAAAAAAAABRAAAAAAAAAEkAAAAAAAAAMQGZmZmZmZg5AmpmZmZmZDUAzMzMzMzMPQGZmZmZmZhRAAAAAAAAAEkAAAAAAAAASQM3MzMzMzBJAmpmZmZmZEUBmZmZmZmYQQAAAAAAAABBAmpmZmZmZEUBmZmZmZmYSQAAAAAAAABBAZmZmZmZmCkDNzMzMzMwQQM3MzMzMzBBAzczMzMzMEEAzMzMzMzMRQAAAAAAAAAhAZmZmZmZmEEAAAAAAAAAYQGZmZmZmZhRAmpmZmZmZF0BmZmZmZmYWQDMzMzMzMxdAZmZmZmZmGkAAAAAAAAASQDMzMzMzMxlAMzMzMzMzF0BmZmZmZmYYQGZmZmZmZhRAMzMzMzMzFUAAAAAAAAAWQAAAAAAAABRAZmZmZmZmFEAzMzMzMzMVQAAAAAAAABZAzczMzMzMGkCamZmZmZkbQAAAAAAAABRAzczMzMzMFkCamZmZmZkTQM3MzMzMzBpAmpmZmZmZE0DNzMzMzMwWQAAAAAAAABhAMzMzMzMzE0CamZmZmZkTQGZmZmZmZhZAMzMzMzMzF0BmZmZmZmYYQJqZmZmZmRlAZmZmZmZmFkBmZmZmZmYUQGZmZmZmZhZAZmZmZmZmGEBmZmZmZmYWQAAAAAAAABZAMzMzMzMzE0CamZmZmZkVQGZmZmZmZhZAZmZmZmZmFEBmZmZmZmYUQJqZmZmZmRdAzczMzMzMFkDNzMzMzMwUQAAAAAAAABRAzczMzMzMFECamZmZmZkVQGZmZmZmZhRA\"},\"shape\":[150],\"dtype\":\"float64\",\"order\":\"little\"}],[\"y\",{\"type\":\"ndarray\",\"array\":{\"type\":\"bytes\",\"data\":\"mpmZmZmZyT+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZnJP5qZmZmZmdk/MzMzMzMz0z+amZmZmZnJP5qZmZmZmck/mpmZmZmZuT+amZmZmZnJP5qZmZmZmck/mpmZmZmZuT+amZmZmZm5P5qZmZmZmck/mpmZmZmZ2T+amZmZmZnZPzMzMzMzM9M/MzMzMzMz0z8zMzMzMzPTP5qZmZmZmck/mpmZmZmZ2T+amZmZmZnJPwAAAAAAAOA/mpmZmZmZyT+amZmZmZnJP5qZmZmZmdk/mpmZmZmZyT+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZnZP5qZmZmZmbk/mpmZmZmZyT+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZm5P5qZmZmZmck/mpmZmZmZyT8zMzMzMzPTPzMzMzMzM9M/mpmZmZmZyT8zMzMzMzPjP5qZmZmZmdk/MzMzMzMz0z+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZnJP2ZmZmZmZvY/AAAAAAAA+D8AAAAAAAD4P83MzMzMzPQ/AAAAAAAA+D/NzMzMzMz0P5qZmZmZmfk/AAAAAAAA8D/NzMzMzMz0P2ZmZmZmZvY/AAAAAAAA8D8AAAAAAAD4PwAAAAAAAPA/ZmZmZmZm9j/NzMzMzMz0P2ZmZmZmZvY/AAAAAAAA+D8AAAAAAADwPwAAAAAAAPg/mpmZmZmZ8T/NzMzMzMz8P83MzMzMzPQ/AAAAAAAA+D8zMzMzMzPzP83MzMzMzPQ/ZmZmZmZm9j9mZmZmZmb2PzMzMzMzM/s/AAAAAAAA+D8AAAAAAADwP5qZmZmZmfE/AAAAAAAA8D8zMzMzMzPzP5qZmZmZmfk/AAAAAAAA+D+amZmZmZn5PwAAAAAAAPg/zczMzMzM9D/NzMzMzMz0P83MzMzMzPQ/MzMzMzMz8z9mZmZmZmb2PzMzMzMzM/M/AAAAAAAA8D/NzMzMzMz0PzMzMzMzM/M/zczMzMzM9D/NzMzMzMz0P5qZmZmZmfE/zczMzMzM9D8AAAAAAAAEQGZmZmZmZv4/zczMzMzMAEDNzMzMzMz8P5qZmZmZmQFAzczMzMzMAEAzMzMzMzP7P83MzMzMzPw/zczMzMzM/D8AAAAAAAAEQAAAAAAAAABAZmZmZmZm/j/NzMzMzMwAQAAAAAAAAABAMzMzMzMzA0BmZmZmZmYCQM3MzMzMzPw/mpmZmZmZAUBmZmZmZmYCQAAAAAAAAPg/ZmZmZmZmAkAAAAAAAAAAQAAAAAAAAABAzczMzMzM/D/NzMzMzMwAQM3MzMzMzPw/zczMzMzM/D/NzMzMzMz8P83MzMzMzABAmpmZmZmZ+T9mZmZmZmb+PwAAAAAAAABAmpmZmZmZAUAAAAAAAAD4P2ZmZmZmZvY/ZmZmZmZmAkAzMzMzMzMDQM3MzMzMzPw/zczMzMzM/D/NzMzMzMwAQDMzMzMzMwNAZmZmZmZmAkBmZmZmZmb+P2ZmZmZmZgJAAAAAAAAABEBmZmZmZmYCQGZmZmZmZv4/AAAAAAAAAEBmZmZmZmYCQM3MzMzMzPw/\"},\"shape\":[150],\"dtype\":\"float64\",\"order\":\"little\"}]]}}},\"view\":{\"type\":\"object\",\"name\":\"CDSView\",\"id\":\"p1155\",\"attributes\":{\"filter\":{\"type\":\"object\",\"name\":\"AllIndices\",\"id\":\"p1156\"}}},\"glyph\":{\"type\":\"object\",\"name\":\"Circle\",\"id\":\"p1151\",\"attributes\":{\"x\":{\"type\":\"field\",\"field\":\"x\"},\"y\":{\"type\":\"field\",\"field\":\"y\"},\"line_color\":{\"type\":\"value\",\"value\":\"#1f77b4\"},\"fill_color\":{\"type\":\"value\",\"value\":\"#1f77b4\"}}},\"nonselection_glyph\":{\"type\":\"object\",\"name\":\"Circle\",\"id\":\"p1152\",\"attributes\":{\"x\":{\"type\":\"field\",\"field\":\"x\"},\"y\":{\"type\":\"field\",\"field\":\"y\"},\"line_color\":{\"type\":\"value\",\"value\":\"#1f77b4\"},\"line_alpha\":{\"type\":\"value\",\"value\":0.1},\"fill_color\":{\"type\":\"value\",\"value\":\"#1f77b4\"},\"fill_alpha\":{\"type\":\"value\",\"value\":0.1},\"hatch_alpha\":{\"type\":\"value\",\"value\":0.1}}},\"muted_glyph\":{\"type\":\"object\",\"name\":\"Circle\",\"id\":\"p1153\",\"attributes\":{\"x\":{\"type\":\"field\",\"field\":\"x\"},\"y\":{\"type\":\"field\",\"field\":\"y\"},\"line_color\":{\"type\":\"value\",\"value\":\"#1f77b4\"},\"line_alpha\":{\"type\":\"value\",\"value\":0.2},\"fill_color\":{\"type\":\"value\",\"value\":\"#1f77b4\"},\"fill_alpha\":{\"type\":\"value\",\"value\":0.2},\"hatch_alpha\":{\"type\":\"value\",\"value\":0.2}}}}}],\"toolbar\":{\"type\":\"object\",\"name\":\"Toolbar\",\"id\":\"p1106\",\"attributes\":{\"tools\":[{\"type\":\"object\",\"name\":\"PanTool\",\"id\":\"p1133\"},{\"type\":\"object\",\"name\":\"WheelZoomTool\",\"id\":\"p1134\"},{\"type\":\"object\",\"name\":\"BoxZoomTool\",\"id\":\"p1135\",\"attributes\":{\"overlay\":{\"type\":\"object\",\"name\":\"BoxAnnotation\",\"id\":\"p1136\",\"attributes\":{\"syncable\":false,\"level\":\"overlay\",\"visible\":false,\"left_units\":\"canvas\",\"right_units\":\"canvas\",\"bottom_units\":\"canvas\",\"top_units\":\"canvas\",\"line_color\":\"black\",\"line_alpha\":1.0,\"line_width\":2,\"line_dash\":[4,4],\"fill_color\":\"lightgrey\",\"fill_alpha\":0.5}}}},{\"type\":\"object\",\"name\":\"SaveTool\",\"id\":\"p1137\"},{\"type\":\"object\",\"name\":\"ResetTool\",\"id\":\"p1138\"},{\"type\":\"object\",\"name\":\"HelpTool\",\"id\":\"p1139\"}]}},\"left\":[{\"type\":\"object\",\"name\":\"LinearAxis\",\"id\":\"p1126\",\"attributes\":{\"ticker\":{\"type\":\"object\",\"name\":\"BasicTicker\",\"id\":\"p1127\",\"attributes\":{\"mantissas\":[1,2,5]}},\"formatter\":{\"type\":\"object\",\"name\":\"BasicTickFormatter\",\"id\":\"p1129\"},\"axis_label\":\"petal width\",\"major_label_policy\":{\"type\":\"object\",\"name\":\"AllLabels\",\"id\":\"p1128\"}}}],\"below\":[{\"type\":\"object\",\"name\":\"LinearAxis\",\"id\":\"p1119\",\"attributes\":{\"ticker\":{\"type\":\"object\",\"name\":\"BasicTicker\",\"id\":\"p1120\",\"attributes\":{\"mantissas\":[1,2,5]}},\"formatter\":{\"type\":\"object\",\"name\":\"BasicTickFormatter\",\"id\":\"p1122\"},\"axis_label\":\"petal length\",\"major_label_policy\":{\"type\":\"object\",\"name\":\"AllLabels\",\"id\":\"p1121\"}}}],\"center\":[{\"type\":\"object\",\"name\":\"Grid\",\"id\":\"p1125\",\"attributes\":{\"axis\":{\"id\":\"p1119\"}}},{\"type\":\"object\",\"name\":\"Grid\",\"id\":\"p1132\",\"attributes\":{\"dimension\":1,\"axis\":{\"id\":\"p1126\"}}}]}}]}};\n",[m
[31m-       "  const render_items = [{\"docid\":\"95a7c408-9bb9-4358-a5f3-79ac8eacb12d\",\"roots\":{\"p1101\":\"644413dd-37b3-4b5d-b704-31de4ebd3ec8\"},\"root_ids\":[\"p1101\"]}];\n",[m
[31m-       "  root.Bokeh.embed.embed_items_notebook(docs_json, render_items);\n",[m
[31m-       "  }\n",[m
[31m-       "  if (root.Bokeh !== undefined) {\n",[m
[31m-       "    embed_document(root);\n",[m
[31m-       "  } else {\n",[m
[31m-       "    let attempts = 0;\n",[m
[31m-       "    const timer = setInterval(function(root) {\n",[m
[31m-       "      if (root.Bokeh !== undefined) {\n",[m
[31m-       "        clearInterval(timer);\n",[m
[31m-       "        embed_document(root);\n",[m
[31m-       "      } else {\n",[m
[31m-       "        attempts++;\n",[m
[31m-       "        if (attempts > 100) {\n",[m
[31m-       "          clearInterval(timer);\n",[m
[31m-       "          console.log(\"Bokeh: ERROR: Unable to run BokehJS code because BokehJS library is missing\");\n",[m
[31m-       "        }\n",[m
[31m-       "      }\n",[m
[31m-       "    }, 10, root)\n",[m
[31m-       "  }\n",[m
[31m-       "})(window);"[m
[31m-      ],[m
[31m-      "application/vnd.bokehjs_exec.v0+json": ""[m
[31m-     },[m
[31m-     "metadata": {[m
[31m-      "application/vnd.bokehjs_exec.v0+json": {[m
[31m-       "id": "p1101"[m
[31m-      }[m
[31m-     },[m
[31m-     "output_type": "display_data"[m
[31m-    }[m
[31m-   ],[m
[31m-   "source": [[m
[31m-    "p = figure(title = 'my first bokeh')\n",[m
[31m-    "p.xaxis.axis_label='petal length'\n",[m
[31m-    "p.yaxis.axis_label='petal width'\n",[m
[31m-    "p.circle(flowers['petal_length'],flowers['petal_width'])\n",[m
[31m-    "show(p)"[m
[31m-   ][m
[31m-  },[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": 12,[m
[31m-   "id": "bb83dfe7-39f8-42bc-8b06-81d9b927dc09",[m
[31m-   "metadata": {},[m
[31m-   "outputs": [[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "text/html": [[m
[31m-       "\n",[m
[31m-       "  <div id=\"ea69198d-c08f-4764-a87e-8a6cdeafb61a\" data-root-id=\"p1396\" style=\"display: contents;\"></div>\n"[m
[31m-      ][m
[31m-     },[m
[31m-     "metadata": {},[m
[31m-     "output_type": "display_data"[m
[31m-    },[m
[31m-    {[m
[31m-     "data": {[m
[31m-      "application/javascript": [[m
[31m-       "(function(root) {\n",[m
[31m-       "  function embed_document(root) {\n",[m
[31m-       "  const docs_json = {\"90f072cf-3641-4e96-9979-baf7e532c2fe\":{\"version\":\"3.0.3\",\"title\":\"Bokeh Application\",\"defs\":[],\"roots\":[{\"type\":\"object\",\"name\":\"Figure\",\"id\":\"p1396\",\"attributes\":{\"x_range\":{\"type\":\"object\",\"name\":\"DataRange1d\",\"id\":\"p1398\"},\"y_range\":{\"type\":\"object\",\"name\":\"DataRange1d\",\"id\":\"p1397\"},\"x_scale\":{\"type\":\"object\",\"name\":\"LinearScale\",\"id\":\"p1410\"},\"y_scale\":{\"type\":\"object\",\"name\":\"LinearScale\",\"id\":\"p1412\"},\"title\":{\"type\":\"object\",\"name\":\"Title\",\"id\":\"p1399\",\"attributes\":{\"text\":\"my first bokeh\"}},\"renderers\":[{\"type\":\"object\",\"name\":\"GlyphRenderer\",\"id\":\"p1449\",\"attributes\":{\"data_source\":{\"type\":\"object\",\"name\":\"ColumnDataSource\",\"id\":\"p1443\",\"attributes\":{\"selected\":{\"type\":\"object\",\"name\":\"Selection\",\"id\":\"p1444\",\"attributes\":{\"indices\":[],\"line_indices\":[]}},\"selection_policy\":{\"type\":\"object\",\"name\":\"UnionRenderers\",\"id\":\"p1445\"},\"data\":{\"type\":\"map\",\"entries\":[[\"x\",{\"type\":\"ndarray\",\"array\":{\"type\":\"bytes\",\"data\":\"ZmZmZmZm9j9mZmZmZmb2P83MzMzMzPQ/AAAAAAAA+D9mZmZmZmb2PzMzMzMzM/s/ZmZmZmZm9j8AAAAAAAD4P2ZmZmZmZvY/AAAAAAAA+D8AAAAAAAD4P5qZmZmZmfk/ZmZmZmZm9j+amZmZmZnxPzMzMzMzM/M/AAAAAAAA+D/NzMzMzMz0P2ZmZmZmZvY/MzMzMzMz+z8AAAAAAAD4PzMzMzMzM/s/AAAAAAAA+D8AAAAAAADwPzMzMzMzM/s/ZmZmZmZm/j+amZmZmZn5P5qZmZmZmfk/AAAAAAAA+D9mZmZmZmb2P5qZmZmZmfk/mpmZmZmZ+T8AAAAAAAD4PwAAAAAAAPg/ZmZmZmZm9j8AAAAAAAD4PzMzMzMzM/M/zczMzMzM9D9mZmZmZmb2P83MzMzMzPQ/AAAAAAAA+D/NzMzMzMz0P83MzMzMzPQ/zczMzMzM9D+amZmZmZn5P2ZmZmZmZv4/ZmZmZmZm9j+amZmZmZn5P2ZmZmZmZvY/AAAAAAAA+D9mZmZmZmb2P83MzMzMzBJAAAAAAAAAEkCamZmZmZkTQAAAAAAAABBAZmZmZmZmEkAAAAAAAAASQM3MzMzMzBJAZmZmZmZmCkBmZmZmZmYSQDMzMzMzMw9AAAAAAAAADEDNzMzMzMwQQAAAAAAAABBAzczMzMzMEkDNzMzMzMwMQJqZmZmZmRFAAAAAAAAAEkBmZmZmZmYQQAAAAAAAABJAMzMzMzMzD0AzMzMzMzMTQAAAAAAAABBAmpmZmZmZE0DNzMzMzMwSQDMzMzMzMxFAmpmZmZmZEUAzMzMzMzMTQAAAAAAAABRAAAAAAAAAEkAAAAAAAAAMQGZmZmZmZg5AmpmZmZmZDUAzMzMzMzMPQGZmZmZmZhRAAAAAAAAAEkAAAAAAAAASQM3MzMzMzBJAmpmZmZmZEUBmZmZmZmYQQAAAAAAAABBAmpmZmZmZEUBmZmZmZmYSQAAAAAAAABBAZmZmZmZmCkDNzMzMzMwQQM3MzMzMzBBAzczMzMzMEEAzMzMzMzMRQAAAAAAAAAhAZmZmZmZmEEAAAAAAAAAYQGZmZmZmZhRAmpmZmZmZF0BmZmZmZmYWQDMzMzMzMxdAZmZmZmZmGkAAAAAAAAASQDMzMzMzMxlAMzMzMzMzF0BmZmZmZmYYQGZmZmZmZhRAMzMzMzMzFUAAAAAAAAAWQAAAAAAAABRAZmZmZmZmFEAzMzMzMzMVQAAAAAAAABZAzczMzMzMGkCamZmZmZkbQAAAAAAAABRAzczMzMzMFkCamZmZmZkTQM3MzMzMzBpAmpmZmZmZE0DNzMzMzMwWQAAAAAAAABhAMzMzMzMzE0CamZmZmZkTQGZmZmZmZhZAMzMzMzMzF0BmZmZmZmYYQJqZmZmZmRlAZmZmZmZmFkBmZmZmZmYUQGZmZmZmZhZAZmZmZmZmGEBmZmZmZmYWQAAAAAAAABZAMzMzMzMzE0CamZmZmZkVQGZmZmZmZhZAZmZmZmZmFEBmZmZmZmYUQJqZmZmZmRdAzczMzMzMFkDNzMzMzMwUQAAAAAAAABRAzczMzMzMFECamZmZmZkVQGZmZmZmZhRA\"},\"shape\":[150],\"dtype\":\"float64\",\"order\":\"little\"}],[\"y\",{\"type\":\"ndarray\",\"array\":{\"type\":\"bytes\",\"data\":\"mpmZmZmZyT+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZnJP5qZmZmZmdk/MzMzMzMz0z+amZmZmZnJP5qZmZmZmck/mpmZmZmZuT+amZmZmZnJP5qZmZmZmck/mpmZmZmZuT+amZmZmZm5P5qZmZmZmck/mpmZmZmZ2T+amZmZmZnZPzMzMzMzM9M/MzMzMzMz0z8zMzMzMzPTP5qZmZmZmck/mpmZmZmZ2T+amZmZmZnJPwAAAAAAAOA/mpmZmZmZyT+amZmZmZnJP5qZmZmZmdk/mpmZmZmZyT+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZnZP5qZmZmZmbk/mpmZmZmZyT+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZm5P5qZmZmZmck/mpmZmZmZyT8zMzMzMzPTPzMzMzMzM9M/mpmZmZmZyT8zMzMzMzPjP5qZmZmZmdk/MzMzMzMz0z+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZnJP2ZmZmZmZvY/AAAAAAAA+D8AAAAAAAD4P83MzMzMzPQ/AAAAAAAA+D/NzMzMzMz0P5qZmZmZmfk/AAAAAAAA8D/NzMzMzMz0P2ZmZmZmZvY/AAAAAAAA8D8AAAAAAAD4PwAAAAAAAPA/ZmZmZmZm9j/NzMzMzMz0P2ZmZmZmZvY/AAAAAAAA+D8AAAAAAADwPwAAAAAAAPg/mpmZmZmZ8T/NzMzMzMz8P83MzMzMzPQ/AAAAAAAA+D8zMzMzMzPzP83MzMzMzPQ/ZmZmZmZm9j9mZmZmZmb2PzMzMzMzM/s/AAAAAAAA+D8AAAAAAADwP5qZmZmZmfE/AAAAAAAA8D8zMzMzMzPzP5qZmZmZmfk/AAAAAAAA+D+amZmZmZn5PwAAAAAAAPg/zczMzMzM9D/NzMzMzMz0P83MzMzMzPQ/MzMzMzMz8z9mZmZmZmb2PzMzMzMzM/M/AAAAAAAA8D/NzMzMzMz0PzMzMzMzM/M/zczMzMzM9D/NzMzMzMz0P5qZmZmZmfE/zczMzMzM9D8AAAAAAAAEQGZmZmZmZv4/zczMzMzMAEDNzMzMzMz8P5qZmZmZmQFAzczMzMzMAEAzMzMzMzP7P83MzMzMzPw/zczMzMzM/D8AAAAAAAAEQAAAAAAAAABAZmZmZmZm/j/NzMzMzMwAQAAAAAAAAABAMzMzMzMzA0BmZmZmZmYCQM3MzMzMzPw/mpmZmZmZAUBmZmZmZmYCQAAAAAAAAPg/ZmZmZmZmAkAAAAAAAAAAQAAAAAAAAABAzczMzMzM/D/NzMzMzMwAQM3MzMzMzPw/zczMzMzM/D/NzMzMzMz8P83MzMzMzABAmpmZmZmZ+T9mZmZmZmb+PwAAAAAAAABAmpmZmZmZAUAAAAAAAAD4P2ZmZmZmZvY/ZmZmZmZmAkAzMzMzMzMDQM3MzMzMzPw/zczMzMzM/D/NzMzMzMwAQDMzMzMzMwNAZmZmZmZmAkBmZmZmZmb+P2ZmZmZmZgJAAAAAAAAABEBmZmZmZmYCQGZmZmZmZv4/AAAAAAAAAEBmZmZmZmYCQM3MzMzMzPw/\"},\"shape\":[150],\"dtype\":\"float64\",\"order\":\"little\"}]]}}},\"view\":{\"type\":\"object\",\"name\":\"CDSView\",\"id\":\"p1450\",\"attributes\":{\"filter\":{\"type\":\"object\",\"name\":\"AllIndices\",\"id\":\"p1451\"}}},\"glyph\":{\"type\":\"object\",\"name\":\"Line\",\"id\":\"p1446\",\"attributes\":{\"x\":{\"type\":\"field\",\"field\":\"x\"},\"y\":{\"type\":\"field\",\"field\":\"y\"},\"line_color\":\"#1f77b4\"}},\"nonselection_glyph\":{\"type\":\"object\",\"name\":\"Line\",\"id\":\"p1447\",\"attributes\":{\"x\":{\"type\":\"field\",\"field\":\"x\"},\"y\":{\"type\":\"field\",\"field\":\"y\"},\"line_color\":\"#1f77b4\",\"line_alpha\":0.1}},\"muted_glyph\":{\"type\":\"object\",\"name\":\"Line\",\"id\":\"p1448\",\"attributes\":{\"x\":{\"type\":\"field\",\"field\":\"x\"},\"y\":{\"type\":\"field\",\"field\":\"y\"},\"line_color\":\"#1f77b4\",\"line_alpha\":0.2}}}}],\"toolbar\":{\"type\":\"object\",\"name\":\"Toolbar\",\"id\":\"p1401\",\"attributes\":{\"tools\":[{\"type\":\"object\",\"name\":\"PanTool\",\"id\":\"p1428\"},{\"type\":\"object\",\"name\":\"WheelZoomTool\",\"id\":\"p1429\"},{\"type\":\"object\",\"name\":\"BoxZoomTool\",\"id\":\"p1430\",\"attributes\":{\"overlay\":{\"type\":\"object\",\"name\":\"BoxAnnotation\",\"id\":\"p1431\",\"attributes\":{\"syncable\":false,\"level\":\"overlay\",\"visible\":false,\"left_units\":\"canvas\",\"right_units\":\"canvas\",\"bottom_units\":\"canvas\",\"top_units\":\"canvas\",\"line_color\":\"black\",\"line_alpha\":1.0,\"line_width\":2,\"line_dash\":[4,4],\"fill_color\":\"lightgrey\",\"fill_alpha\":0.5}}}},{\"type\":\"object\",\"name\":\"SaveTool\",\"id\":\"p1432\"},{\"type\":\"object\",\"name\":\"ResetTool\",\"id\":\"p1433\"},{\"type\":\"object\",\"name\":\"HelpTool\",\"id\":\"p1434\"}]}},\"left\":[{\"type\":\"object\",\"name\":\"LinearAxis\",\"id\":\"p1421\",\"attributes\":{\"ticker\":{\"type\":\"object\",\"name\":\"BasicTicker\",\"id\":\"p1422\",\"attributes\":{\"mantissas\":[1,2,5]}},\"formatter\":{\"type\":\"object\",\"name\":\"BasicTickFormatter\",\"id\":\"p1424\"},\"axis_label\":\"petal width\",\"major_label_policy\":{\"type\":\"object\",\"name\":\"AllLabels\",\"id\":\"p1423\"}}}],\"below\":[{\"type\":\"object\",\"name\":\"LinearAxis\",\"id\":\"p1414\",\"attributes\":{\"ticker\":{\"type\":\"object\",\"name\":\"BasicTicker\",\"id\":\"p1415\",\"attributes\":{\"mantissas\":[1,2,5]}},\"formatter\":{\"type\":\"object\",\"name\":\"BasicTickFormatter\",\"id\":\"p1417\"},\"axis_label\":\"petal length\",\"major_label_policy\":{\"type\":\"object\",\"name\":\"AllLabels\",\"id\":\"p1416\"}}}],\"center\":[{\"type\":\"object\",\"name\":\"Grid\",\"id\":\"p1420\",\"attributes\":{\"axis\":{\"id\":\"p1414\"}}},{\"type\":\"object\",\"name\":\"Grid\",\"id\":\"p1427\",\"attributes\":{\"dimension\":1,\"axis\":{\"id\":\"p1421\"}}}]}}]}};\n",[m
[31m-       "  const render_items = [{\"docid\":\"90f072cf-3641-4e96-9979-baf7e532c2fe\",\"roots\":{\"p1396\":\"ea69198d-c08f-4764-a87e-8a6cdeafb61a\"},\"root_ids\":[\"p1396\"]}];\n",[m
[31m-       "  root.Bokeh.embed.embed_items_notebook(docs_json, render_items);\n",[m
[31m-       "  }\n",[m
[31m-       "  if (root.Bokeh !== undefined) {\n",[m
[31m-       "    embed_document(root);\n",[m
[31m-       "  } else {\n",[m
[31m-       "    let attempts = 0;\n",[m
[31m-       "    const timer = setInterval(function(root) {\n",[m
[31m-       "      if (root.Bokeh !== undefined) {\n",[m
[31m-       "        clearInterval(timer);\n",[m
[31m-       "        embed_document(root);\n",[m
[31m-       "      } else {\n",[m
[31m-       "        attempts++;\n",[m
[31m-       "        if (attempts > 100) {\n",[m
[31m-       "          clearInterval(timer);\n",[m
[31m-       "          console.log(\"Bokeh: ERROR: Unable to run BokehJS code because BokehJS library is missing\");\n",[m
[31m-       "        }\n",[m
[31m-       "      }\n",[m
[31m-       "    }, 10, root)\n",[m
[31m-       "  }\n",[m
[31m-       "})(window);"[m
[31m-      ],[m
[31m-      "application/vnd.bokehjs_exec.v0+json": ""[m
[31m-     },[m
[31m-     "metadata": {[m
[31m-      "application/vnd.bokehjs_exec.v0+json": {[m
[31m-       "id": "p1396"[m
[31m-      }[m
[31m-     },[m
[31m-     "output_type": "display_data"[m
[31m-    }[m
[31m-   ],[m
[31m-   "source": [[m
[31m-    "p = figure(title = 'my first bokeh')\n",[m
[31m-    "p.xaxis.axis_label='petal length'\n",[m
[31m-    "p.yaxis.axis_label='petal width'\n",[m
[31m-    "p.line(flowers['petal_length'],flowers['petal_width'])\n",[m
[31m-    "show(p)"[m
[31m-   ][m
[31m-  }[m
[31m- ],[m
[31m- "metadata": {[m
[31m-  "kernelspec": {[m
[31m-   "display_name": "Python 3 (ipykernel)",[m
[31m-   "language": "python",[m
[31m-   "name": "python3"[m
[31m-  },[m
[31m-  "language_info": {[m
[31m-   "codemirror_mode": {[m
[31m-    "name": "ipython",[m
[31m-    "version": 3[m
[31m-   },[m
[31m-   "file_extension": ".py",[m
[31m-   "mimetype": "text/x-python",[m
[31m-   "name": "python",[m
[31m-   "nbconvert_exporter": "python",[m
[31m-   "pygments_lexer": "ipython3",[m
[31m-   "version": "3.10.8"[m
[31m-  }[m
[31m- },[m
[31m- "nbformat": 4,[m
[31m- "nbformat_minor": 5[m
[31m-}[m
[1mdiff --git a/test.html b/test.html[m
[1mdeleted file mode 100644[m
[1mindex 495d98a..0000000[m
[1m--- a/test.html[m
[1m+++ /dev/null[m
[36m@@ -1,60 +0,0 @@[m
[31m-<!DOCTYPE html>[m
[31m-<html lang="en">[m
[31m-  <head>[m
[31m-    <meta charset="utf-8">[m
[31m-    <title>Bokeh Plot</title>[m
[31m-<style>[m
[31m-      html, body {[m
[31m-        box-sizing: border-box;[m
[31m-        height: 100%;[m
[31m-        margin: 0;[m
[31m-        padding: 0;[m
[31m-      }[m
[31m-    </style>[m
[31m-    <script type="text/javascript" src="https://cdn.bokeh.org/bokeh/release/bokeh-3.0.3.min.js"></script>[m
[31m-    <script type="text/javascript">[m
[31m-        Bokeh.set_log_level("info");[m
[31m-    </script>[m
[31m-  </head>[m
[31m-  <body>[m
[31m-    <div id="65b4c4c7-826a-447a-9fa0-814a13822c97" data-root-id="p1396" style="display: contents;"></div>[m
[31m-  [m
[31m-    <script type="application/json" id="p1722">[m
[31m-      {"d00eecf5-9e15-42e1-aeb0-a07afcd8fbbc":{"version":"3.0.3","title":"Bokeh Application","defs":[],"roots":[{"type":"object","name":"Figure","id":"p1396","attributes":{"x_range":{"type":"object","name":"DataRange1d","id":"p1398"},"y_range":{"type":"object","name":"DataRange1d","id":"p1397"},"x_scale":{"type":"object","name":"LinearScale","id":"p1410"},"y_scale":{"type":"object","name":"LinearScale","id":"p1412"},"title":{"type":"object","name":"Title","id":"p1399","attributes":{"text":"my first bokeh"}},"renderers":[{"type":"object","name":"GlyphRenderer","id":"p1449","attributes":{"data_source":{"type":"object","name":"ColumnDataSource","id":"p1443","attributes":{"selected":{"type":"object","name":"Selection","id":"p1444","attributes":{"indices":[],"line_indices":[]}},"selection_policy":{"type":"object","name":"UnionRenderers","id":"p1445"},"data":{"type":"map","entries":[["x",{"type":"ndarray","array":{"type":"bytes","data":"ZmZmZmZm9j9mZmZmZmb2P83MzMzMzPQ/AAAAAAAA+D9mZmZmZmb2PzMzMzMzM/s/ZmZmZmZm9j8AAAAAAAD4P2ZmZmZmZvY/AAAAAAAA+D8AAAAAAAD4P5qZmZmZmfk/ZmZmZmZm9j+amZmZmZnxPzMzMzMzM/M/AAAAAAAA+D/NzMzMzMz0P2ZmZmZmZvY/MzMzMzMz+z8AAAAAAAD4PzMzMzMzM/s/AAAAAAAA+D8AAAAAAADwPzMzMzMzM/s/ZmZmZmZm/j+amZmZmZn5P5qZmZmZmfk/AAAAAAAA+D9mZmZmZmb2P5qZmZmZmfk/mpmZmZmZ+T8AAAAAAAD4PwAAAAAAAPg/ZmZmZmZm9j8AAAAAAAD4PzMzMzMzM/M/zczMzMzM9D9mZmZmZmb2P83MzMzMzPQ/AAAAAAAA+D/NzMzMzMz0P83MzMzMzPQ/zczMzMzM9D+amZmZmZn5P2ZmZmZmZv4/ZmZmZmZm9j+amZmZmZn5P2ZmZmZmZvY/AAAAAAAA+D9mZmZmZmb2P83MzMzMzBJAAAAAAAAAEkCamZmZmZkTQAAAAAAAABBAZmZmZmZmEkAAAAAAAAASQM3MzMzMzBJAZmZmZmZmCkBmZmZmZmYSQDMzMzMzMw9AAAAAAAAADEDNzMzMzMwQQAAAAAAAABBAzczMzMzMEkDNzMzMzMwMQJqZmZmZmRFAAAAAAAAAEkBmZmZmZmYQQAAAAAAAABJAMzMzMzMzD0AzMzMzMzMTQAAAAAAAABBAmpmZmZmZE0DNzMzMzMwSQDMzMzMzMxFAmpmZmZmZEUAzMzMzMzMTQAAAAAAAABRAAAAAAAAAEkAAAAAAAAAMQGZmZmZmZg5AmpmZmZmZDUAzMzMzMzMPQGZmZmZmZhRAAAAAAAAAEkAAAAAAAAASQM3MzMzMzBJAmpmZmZmZEUBmZmZmZmYQQAAAAAAAABBAmpmZmZmZEUBmZmZmZmYSQAAAAAAAABBAZmZmZmZmCkDNzMzMzMwQQM3MzMzMzBBAzczMzMzMEEAzMzMzMzMRQAAAAAAAAAhAZmZmZmZmEEAAAAAAAAAYQGZmZmZmZhRAmpmZmZmZF0BmZmZmZmYWQDMzMzMzMxdAZmZmZmZmGkAAAAAAAAASQDMzMzMzMxlAMzMzMzMzF0BmZmZmZmYYQGZmZmZmZhRAMzMzMzMzFUAAAAAAAAAWQAAAAAAAABRAZmZmZmZmFEAzMzMzMzMVQAAAAAAAABZAzczMzMzMGkCamZmZmZkbQAAAAAAAABRAzczMzMzMFkCamZmZmZkTQM3MzMzMzBpAmpmZmZmZE0DNzMzMzMwWQAAAAAAAABhAMzMzMzMzE0CamZmZmZkTQGZmZmZmZhZAMzMzMzMzF0BmZmZmZmYYQJqZmZmZmRlAZmZmZmZmFkBmZmZmZmYUQGZmZmZmZhZAZmZmZmZmGEBmZmZmZmYWQAAAAAAAABZAMzMzMzMzE0CamZmZmZkVQGZmZmZmZhZAZmZmZmZmFEBmZmZmZmYUQJqZmZmZmRdAzczMzMzMFkDNzMzMzMwUQAAAAAAAABRAzczMzMzMFECamZmZmZkVQGZmZmZmZhRA"},"shape":[150],"dtype":"float64","order":"little"}],["y",{"type":"ndarray","array":{"type":"bytes","data":"mpmZmZmZyT+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZnJP5qZmZmZmdk/MzMzMzMz0z+amZmZmZnJP5qZmZmZmck/mpmZmZmZuT+amZmZmZnJP5qZmZmZmck/mpmZmZmZuT+amZmZmZm5P5qZmZmZmck/mpmZmZmZ2T+amZmZmZnZPzMzMzMzM9M/MzMzMzMz0z8zMzMzMzPTP5qZmZmZmck/mpmZmZmZ2T+amZmZmZnJPwAAAAAAAOA/mpmZmZmZyT+amZmZmZnJP5qZmZmZmdk/mpmZmZmZyT+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZnZP5qZmZmZmbk/mpmZmZmZyT+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZm5P5qZmZmZmck/mpmZmZmZyT8zMzMzMzPTPzMzMzMzM9M/mpmZmZmZyT8zMzMzMzPjP5qZmZmZmdk/MzMzMzMz0z+amZmZmZnJP5qZmZmZmck/mpmZmZmZyT+amZmZmZnJP2ZmZmZmZvY/AAAAAAAA+D8AAAAAAAD4P83MzMzMzPQ/AAAAAAAA+D/NzMzMzMz0P5qZmZmZmfk/AAAAAAAA8D/NzMzMzMz0P2ZmZmZmZvY/AAAAAAAA8D8AAAAAAAD4PwAAAAAAAPA/ZmZmZmZm9j/NzMzMzMz0P2ZmZmZmZvY/AAAAAAAA+D8AAAAAAADwPwAAAAAAAPg/mpmZmZmZ8T/NzMzMzMz8P83MzMzMzPQ/AAAAAAAA+D8zMzMzMzPzP83MzMzMzPQ/ZmZmZmZm9j9mZmZmZmb2PzMzMzMzM/s/AAAAAAAA+D8AAAAAAADwP5qZmZmZmfE/AAAAAAAA8D8zMzMzMzPzP5qZmZmZmfk/AAAAAAAA+D+amZmZmZn5PwAAAAAAAPg/zczMzMzM9D/NzMzMzMz0P83MzMzMzPQ/MzMzMzMz8z9mZmZmZmb2PzMzMzMzM/M/AAAAAAAA8D/NzMzMzMz0PzMzMzMzM/M/zczMzMzM9D/NzMzMzMz0P5qZmZmZmfE/zczMzMzM9D8AAAAAAAAEQGZmZmZmZv4/zczMzMzMAEDNzMzMzMz8P5qZmZmZmQFAzczMzMzMAEAzMzMzMzP7P83MzMzMzPw/zczMzMzM/D8AAAAAAAAEQAAAAAAAAABAZmZmZmZm/j/NzMzMzMwAQAAAAAAAAABAMzMzMzMzA0BmZmZmZmYCQM3MzMzMzPw/mpmZmZmZAUBmZmZmZmYCQAAAAAAAAPg/ZmZmZmZmAkAAAAAAAAAAQAAAAAAAAABAzczMzMzM/D/NzMzMzMwAQM3MzMzMzPw/zczMzMzM/D/NzMzMzMz8P83MzMzMzABAmpmZmZmZ+T9mZmZmZmb+PwAAAAAAAABAmpmZmZmZAUAAAAAAAAD4P2ZmZmZmZvY/ZmZmZmZmAkAzMzMzMzMDQM3MzMzMzPw/zczMzMzM/D/NzMzMzMwAQDMzMzMzMwNAZmZmZmZmAkBmZmZmZmb+P2ZmZmZmZgJAAAAAAAAABEBmZmZmZmYCQGZmZmZmZv4/AAAAAAAAAEBmZmZmZmYCQM3MzMzMzPw/"},"shape":[150],"dtype":"float64","order":"little"}]]}}},"view":{"type":"object","name":"CDSView","id":"p1450","attributes":{"filter":{"type":"object","name":"AllIndices","id":"p1451"}}},"glyph":{"type":"object","name":"Line","id":"p1446","attributes":{"x":{"type":"field","field":"x"},"y":{"type":"field","field":"y"},"line_color":"#1f77b4"}},"nonselection_glyph":{"type":"object","name":"Line","id":"p1447","attributes":{"x":{"type":"field","field":"x"},"y":{"type":"field","field":"y"},"line_color":"#1f77b4","line_alpha":0.1}},"muted_glyph":{"type":"object","name":"Line","id":"p1448","attributes":{"x":{"type":"field","field":"x"},"y":{"type":"field","field":"y"},"line_color":"#1f77b4","line_alpha":0.2}}}}],"toolbar":{"type":"object","name":"Toolbar","id":"p1401","attributes":{"tools":[{"type":"object","name":"PanTool","id":"p1428"},{"type":"object","name":"WheelZoomTool","id":"p1429"},{"type":"object","name":"BoxZoomTool","id":"p1430","attributes":{"overlay":{"type":"object","name":"BoxAnnotation","id":"p1431","attributes":{"syncable":false,"level":"overlay","visible":false,"left_units":"canvas","right_units":"canvas","bottom_units":"canvas","top_units":"canvas","line_color":"black","line_alpha":1.0,"line_width":2,"line_dash":[4,4],"fill_color":"lightgrey","fill_alpha":0.5}}}},{"type":"object","name":"SaveTool","id":"p1432"},{"type":"object","name":"ResetTool","id":"p1433"},{"type":"object","name":"HelpTool","id":"p1434"}]}},"left":[{"type":"object","name":"LinearAxis","id":"p1421","attributes":{"ticker":{"type":"object","name":"BasicTicker","id":"p1422","attributes":{"mantissas":[1,2,5]}},"formatter":{"type":"object","name":"BasicTickFormatter","id":"p1424"},"axis_label":"petal width","major_label_policy":{"type":"object","name":"AllLabels","id":"p1423"}}}],"below":[{"type":"object","name":"LinearAxis","id":"p1414","attributes":{"ticker":{"type":"object","name":"BasicTicker","id":"p1415","attributes":{"mantissas":[1,2,5]}},"formatter":{"type":"object","name":"BasicTickFormatter","id":"p1417"},"axis_label":"petal length","major_label_policy":{"type":"object","name":"AllLabels","id":"p1416"}}}],"center":[{"type":"object","name":"Grid","id":"p1420","attributes":{"axis":{"id":"p1414"}}},{"type":"object","name":"Grid","id":"p1427","attributes":{"dimension":1,"axis":{"id":"p1421"}}}]}}]}}[m
[31m-    </script>[m
[31m-    <script type="text/javascript">[m
[31m-      (function() {[m
[31m-        const fn = function() {[m
[31m-          Bokeh.safely(function() {[m
[31m-            (function(root) {[m
[31m-              function embed_document(root) {[m
[31m-              const docs_json = document.getElementById('p1722').textContent;[m
[31m-              const render_items = [{"docid":"d00eecf5-9e15-42e1-aeb0-a07afcd8fbbc","roots":{"p1396":"65b4c4c7-826a-447a-9fa0-814a13822c97"},"root_ids":["p1396"]}];[m
[31m-              root.Bokeh.embed.embed_items(docs_json, render_items);[m
[31m-              }[m
[31m-              if (root.Bokeh !== undefined) {[m
[31m-                embed_document(root);[m
[31m-              } else {[m
[31m-                let attempts = 0;[m
[31m-                const timer = setInterval(function(root) {[m
[31m-                  if (root.Bokeh !== undefined) {[m
[31m-                    clearInterval(timer);[m
[31m-                    embed_document(root);[m
[31m-                  } else {[m
[31m-                    attempts++;[m
[31m-                    if (attempts > 100) {[m
[31m-                      clearInterval(timer);[m
[31m-                      console.log("Bokeh: ERROR: Unable to run BokehJS code because BokehJS library is missing");[m
[31m-                    }[m
[31m-                  }[m
[31m-                }, 10, root)[m
[31m-              }[m
[31m-            })(window);[m
[31m-          });[m
[31m-        };[m
[31m-        if (document.readyState != "loading") fn();[m
[31m-        else document.addEventListener("DOMContentLoaded", fn);[m
[31m-      })();[m
[31m-    </script>[m
[31m-  </body>[m
[31m-</html>[m
\ No newline at end of file[m
