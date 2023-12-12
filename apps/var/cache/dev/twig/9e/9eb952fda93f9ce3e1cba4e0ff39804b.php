<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* syncbases/form.html.twig */
class __TwigTemplate_8c8fbc053300d1b47f2b576a9c9f3da3 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->blocks = [
            'title' => [$this, 'block_title'],
            'body' => [$this, 'block_body'],
        ];
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return "base.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        $__internal_5a27a8ba21ca79b61932376b2fa922d2 = $this->extensions["Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension"];
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->enter($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "syncbases/form.html.twig"));

        $__internal_6f47bbe9983af81f1e7450e9a3e3768f = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->enter($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "syncbases/form.html.twig"));

        $this->parent = $this->loadTemplate("base.html.twig", "syncbases/form.html.twig", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
        
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->leave($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof);

        
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->leave($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof);

    }

    // line 3
    public function block_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        $__internal_5a27a8ba21ca79b61932376b2fa922d2 = $this->extensions["Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension"];
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->enter($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "block", "title"));

        $__internal_6f47bbe9983af81f1e7450e9a3e3768f = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->enter($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "block", "title"));

        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Formulario de SyncBases "), "html", null, true);
        echo " ";
        
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->leave($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof);

        
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->leave($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof);

    }

    // line 5
    public function block_body($context, array $blocks = [])
    {
        $macros = $this->macros;
        $__internal_5a27a8ba21ca79b61932376b2fa922d2 = $this->extensions["Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension"];
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->enter($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "block", "body"));

        $__internal_6f47bbe9983af81f1e7450e9a3e3768f = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->enter($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "block", "body"));

        // line 6
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new RuntimeError('Variable "app" does not exist.', 6, $this->source); })()), "session", [], "any", false, false, false, 6), "getFlashBag", [], "any", false, false, false, 6), "get", ["message"], "method", false, false, false, 6));
        foreach ($context['_seq'] as $context["_key"] => $context["message"]) {
            // line 7
            echo "    <br><div class=\"alert alert-success\" role=\"alert\">";
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans($context["message"]), "html", null, true);
            echo "</div>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['message'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 9
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new RuntimeError('Variable "app" does not exist.', 9, $this->source); })()), "session", [], "any", false, false, false, 9), "getFlashBag", [], "any", false, false, false, 9), "get", ["messageerr"], "method", false, false, false, 9));
        foreach ($context['_seq'] as $context["_key"] => $context["message"]) {
            // line 10
            echo "    <br><div class=\"alert alert-danger\" role=\"alert\">";
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans($context["message"]), "html", null, true);
            echo "</div>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['message'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 12
        echo "<br>
<a class=\"btn btn-secondary\" role=\"button\" aria-disabled=\"true\" href=\"";
        // line 13
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("syncbases_index");
        echo "\">";
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Volver"), "html", null, true);
        echo "</a>

<h1>";
        // line 15
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans((isset($context["titleform"]) || array_key_exists("titleform", $context) ? $context["titleform"] : (function () { throw new RuntimeError('Variable "titleform" does not exist.', 15, $this->source); })())), "html", null, true);
        echo "</h1>

";
        // line 17
        echo         $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->renderBlock((isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 17, $this->source); })()), 'form_start');
        echo "
    <div class=\"my-custom-class-for-errors\">
        ";
        // line 19
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock((isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 19, $this->source); })()), 'errors');
        echo "
    </div>

    <div class=\"col-md-6 mx-auto\">
        <div class=\"row\">
            ";
        // line 24
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(twig_get_attribute($this->env, $this->source, (isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 24, $this->source); })()), "description", [], "any", false, false, false, 24), 'row');
        echo "
            <div class=\"col\" id=\"fhost\">
                ";
        // line 26
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(twig_get_attribute($this->env, $this->source, (isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 26, $this->source); })()), "fhost", [], "any", false, false, false, 26), 'row');
        echo "
                ";
        // line 27
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(twig_get_attribute($this->env, $this->source, (isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 27, $this->source); })()), "fport", [], "any", false, false, false, 27), 'row');
        echo "
                ";
        // line 28
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(twig_get_attribute($this->env, $this->source, (isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 28, $this->source); })()), "fuser", [], "any", false, false, false, 28), 'row');
        echo "
                ";
        // line 29
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(twig_get_attribute($this->env, $this->source, (isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 29, $this->source); })()), "fpasswd", [], "any", false, false, false, 29), 'row');
        echo "
            </div>
            <div class=\"col\" id=\"thost\">
                ";
        // line 32
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(twig_get_attribute($this->env, $this->source, (isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 32, $this->source); })()), "thost", [], "any", false, false, false, 32), 'row');
        echo "
                ";
        // line 33
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(twig_get_attribute($this->env, $this->source, (isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 33, $this->source); })()), "tport", [], "any", false, false, false, 33), 'row');
        echo "
                ";
        // line 34
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(twig_get_attribute($this->env, $this->source, (isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 34, $this->source); })()), "tuser", [], "any", false, false, false, 34), 'row');
        echo "
                ";
        // line 35
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(twig_get_attribute($this->env, $this->source, (isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 35, $this->source); })()), "tpasswd", [], "any", false, false, false, 35), 'row');
        echo "
            </div>
            ";
        // line 37
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(twig_get_attribute($this->env, $this->source, (isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 37, $this->source); })()), "active", [], "any", false, false, false, 37), 'row');
        echo "
        </div>
        ";
        // line 39
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(twig_get_attribute($this->env, $this->source, (isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 39, $this->source); })()), "btnsubmit", [], "any", false, false, false, 39), 'row');
        echo "
    </div>

";
        // line 42
        echo         $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->renderBlock((isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 42, $this->source); })()), 'form_end');
        echo "

";
        // line 44
        if (array_key_exists("borrado", $context)) {
            echo "<div class=\"alert alert-danger\" role=\"alert\">";
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("ATENCIÓN: Usted está por eleminar este registro."), "html", null, true);
            echo "</div>";
        }
        // line 45
        echo "
";
        // line 46
        if (array_key_exists("regsync", $context)) {
            // line 47
            echo "    <hr>
    <div class=\"col-md-6 mx-auto\">
    <h2>Tablas a sincronizar</h2>
    <a class=\"btn btn-primary\" role=\"button\" aria-disabled=\"true\" href=\"";
            // line 50
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("syncbasestables_new", ["id" => twig_get_attribute($this->env, $this->source, (isset($context["regsync"]) || array_key_exists("regsync", $context) ? $context["regsync"] : (function () { throw new RuntimeError('Variable "regsync" does not exist.', 50, $this->source); })()), "id", [], "any", false, false, false, 50)]), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Nuevo tabla"), "html", null, true);
            echo "</a>
    <table id=\"tblist\" class=\"table table-sm table-striped table-bordered table-hover\">
    <thead>
    <tr>
    <th data-field=\"fbase\">";
            // line 54
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Base fuente"), "html", null, true);
            echo "</th>
    <th data-field=\"fschema\">";
            // line 55
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Esquema fuente"), "html", null, true);
            echo "</th>
    <th data-field=\"ftable\">";
            // line 56
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Tabla fuente"), "html", null, true);
            echo "</th>
    <th data-field=\"tbase\">";
            // line 57
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Base destino"), "html", null, true);
            echo "</th>
    <th data-field=\"tschema\">";
            // line 58
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Esquema destino"), "html", null, true);
            echo "</th>
    <th data-field=\"ttable\">";
            // line 59
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Tabla destino"), "html", null, true);
            echo "</th>
    <th data-field=\"active\">";
            // line 60
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Activa"), "html", null, true);
            echo "</th>
    <th data-field=\"opcionSyncBasesTables\">";
            // line 61
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Opcion"), "html", null, true);
            echo "</th>
    </tr>
    </thead>
    </table>
    </div>

    <script>
    \$(document).ready(function() {
    \$('#tblist').DataTable({
        \"stateSave\":true,\"processing\":true,
        \"language\":{\"url\":\"";
            // line 71
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\AssetExtension']->getAssetUrl("/assets/datatables/Spanish.json"), "html", null, true);
            echo "\"},
        \"ajax\":\"";
            // line 72
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("syncbasestables_list", ["id" => twig_get_attribute($this->env, $this->source, (isset($context["regsync"]) || array_key_exists("regsync", $context) ? $context["regsync"] : (function () { throw new RuntimeError('Variable "regsync" does not exist.', 72, $this->source); })()), "id", [], "any", false, false, false, 72)]), "html", null, true);
            echo "\",
        \"order\": [[ 0, \"desc\" ]],
        \"columns\":[
        {\"data\":\"fbase\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/syncbasestables/\"+oData.id+\"/edit'>\"+oData.fbase+\"</a>\");}}},
        {\"data\":\"fschema\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/syncbasestables/\"+oData.id+\"/edit'>\"+oData.fschema+\"</a>\");}}},
        {\"data\":\"ftable\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/syncbasestables/\"+oData.id+\"/edit'>\"+oData.ftable+\"</a>\");}}},
        {\"data\":\"tbase\"},
        {\"data\":\"tschema\"},
        {\"data\":\"ttable\"},
        {\"data\":\"active\"},
        {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/syncbasestables/\"+oData.id+\"/delete'><i class='bi bi-trash'></i></a>\");}}},
        ]
    });   
    });
    </script>

        <hr>
        <div class=\"col-md-6 mx-auto\">
        ";
            // line 90
            if (twig_get_attribute($this->env, $this->source, (isset($context["regsync"]) || array_key_exists("regsync", $context) ? $context["regsync"] : (function () { throw new RuntimeError('Variable "regsync" does not exist.', 90, $this->source); })()), "active", [], "any", false, false, false, 90)) {
                // line 91
                echo "            <a class=\"btn btn-warning\" role=\"button\" aria-disabled=\"true\" href=\"";
                echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("syncbases_genfile", ["id" => twig_get_attribute($this->env, $this->source, (isset($context["regsync"]) || array_key_exists("regsync", $context) ? $context["regsync"] : (function () { throw new RuntimeError('Variable "regsync" does not exist.', 91, $this->source); })()), "id", [], "any", false, false, false, 91)]), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Generar archivo de configuracion de sincronizacion"), "html", null, true);
                echo "</a>
        ";
            } else {
                // line 93
                echo "            <strong><h5>****** Esta tarea no está activa ******</h5></strong>
        ";
            }
            // line 95
            echo "
          ";
            // line 96
            if (((isset($context["archivoGenerado"]) || array_key_exists("archivoGenerado", $context) ? $context["archivoGenerado"] : (function () { throw new RuntimeError('Variable "archivoGenerado" does not exist.', 96, $this->source); })()) != "")) {
                // line 97
                echo "          <br><strong><h5>Archivo Generado:  ";
                echo twig_escape_filter($this->env, (isset($context["archivoGenerado"]) || array_key_exists("archivoGenerado", $context) ? $context["archivoGenerado"] : (function () { throw new RuntimeError('Variable "archivoGenerado" does not exist.', 97, $this->source); })()), "html", null, true);
                echo "</h5></strong>
          ";
            }
            // line 99
            echo "
        </div>

    <hr>
";
        }
        // line 104
        echo "
<br><br><br>

";
        
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->leave($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof);

        
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->leave($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof);

    }

    public function getTemplateName()
    {
        return "syncbases/form.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  322 => 104,  315 => 99,  309 => 97,  307 => 96,  304 => 95,  300 => 93,  292 => 91,  290 => 90,  269 => 72,  265 => 71,  252 => 61,  248 => 60,  244 => 59,  240 => 58,  236 => 57,  232 => 56,  228 => 55,  224 => 54,  215 => 50,  210 => 47,  208 => 46,  205 => 45,  199 => 44,  194 => 42,  188 => 39,  183 => 37,  178 => 35,  174 => 34,  170 => 33,  166 => 32,  160 => 29,  156 => 28,  152 => 27,  148 => 26,  143 => 24,  135 => 19,  130 => 17,  125 => 15,  118 => 13,  115 => 12,  106 => 10,  102 => 9,  93 => 7,  89 => 6,  79 => 5,  59 => 3,  36 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% extends 'base.html.twig' %}

{% block title %}{{ 'Formulario de SyncBases ' | trans }} {% endblock %}

{% block body %}
{% for message in app.session.getFlashBag.get('message') %}
    <br><div class=\"alert alert-success\" role=\"alert\">{{message | trans }}</div>
{% endfor %}
{% for message in app.session.getFlashBag.get('messageerr') %}
    <br><div class=\"alert alert-danger\" role=\"alert\">{{message | trans }}</div>
{% endfor %}
<br>
<a class=\"btn btn-secondary\" role=\"button\" aria-disabled=\"true\" href=\"{{url('syncbases_index')}}\">{{ 'Volver' | trans}}</a>

<h1>{{ titleform | trans }}</h1>

{{ form_start(form) }}
    <div class=\"my-custom-class-for-errors\">
        {{ form_errors(form) }}
    </div>

    <div class=\"col-md-6 mx-auto\">
        <div class=\"row\">
            {{ form_row(form.description) }}
            <div class=\"col\" id=\"fhost\">
                {{ form_row(form.fhost) }}
                {{ form_row(form.fport) }}
                {{ form_row(form.fuser) }}
                {{ form_row(form.fpasswd) }}
            </div>
            <div class=\"col\" id=\"thost\">
                {{ form_row(form.thost) }}
                {{ form_row(form.tport) }}
                {{ form_row(form.tuser) }}
                {{ form_row(form.tpasswd) }}
            </div>
            {{ form_row(form.active) }}
        </div>
        {{ form_row(form.btnsubmit) }}
    </div>

{{ form_end(form) }}

{% if borrado is defined %}<div class=\"alert alert-danger\" role=\"alert\">{{ 'ATENCIÓN: Usted está por eleminar este registro.' | trans }}</div>{% endif %}

{% if regsync is defined %}
    <hr>
    <div class=\"col-md-6 mx-auto\">
    <h2>Tablas a sincronizar</h2>
    <a class=\"btn btn-primary\" role=\"button\" aria-disabled=\"true\" href=\"{{url('syncbasestables_new', {'id':regsync.id})}}\">{{ 'Nuevo tabla' | trans }}</a>
    <table id=\"tblist\" class=\"table table-sm table-striped table-bordered table-hover\">
    <thead>
    <tr>
    <th data-field=\"fbase\">{{ 'Base fuente' | trans}}</th>
    <th data-field=\"fschema\">{{ 'Esquema fuente' | trans}}</th>
    <th data-field=\"ftable\">{{ 'Tabla fuente' | trans}}</th>
    <th data-field=\"tbase\">{{ 'Base destino' | trans}}</th>
    <th data-field=\"tschema\">{{ 'Esquema destino' | trans}}</th>
    <th data-field=\"ttable\">{{ 'Tabla destino' | trans}}</th>
    <th data-field=\"active\">{{ 'Activa' | trans}}</th>
    <th data-field=\"opcionSyncBasesTables\">{{'Opcion' | trans}}</th>
    </tr>
    </thead>
    </table>
    </div>

    <script>
    \$(document).ready(function() {
    \$('#tblist').DataTable({
        \"stateSave\":true,\"processing\":true,
        \"language\":{\"url\":\"{{asset('/assets/datatables/Spanish.json')}}\"},
        \"ajax\":\"{{url('syncbasestables_list', {'id':regsync.id} )}}\",
        \"order\": [[ 0, \"desc\" ]],
        \"columns\":[
        {\"data\":\"fbase\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/syncbasestables/\"+oData.id+\"/edit'>\"+oData.fbase+\"</a>\");}}},
        {\"data\":\"fschema\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/syncbasestables/\"+oData.id+\"/edit'>\"+oData.fschema+\"</a>\");}}},
        {\"data\":\"ftable\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/syncbasestables/\"+oData.id+\"/edit'>\"+oData.ftable+\"</a>\");}}},
        {\"data\":\"tbase\"},
        {\"data\":\"tschema\"},
        {\"data\":\"ttable\"},
        {\"data\":\"active\"},
        {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/syncbasestables/\"+oData.id+\"/delete'><i class='bi bi-trash'></i></a>\");}}},
        ]
    });   
    });
    </script>

        <hr>
        <div class=\"col-md-6 mx-auto\">
        {% if regsync.active  %}
            <a class=\"btn btn-warning\" role=\"button\" aria-disabled=\"true\" href=\"{{url('syncbases_genfile', {'id':regsync.id})}}\">{{ 'Generar archivo de configuracion de sincronizacion' | trans }}</a>
        {% else  %}
            <strong><h5>****** Esta tarea no está activa ******</h5></strong>
        {% endif  %}

          {% if archivoGenerado !=''  %}
          <br><strong><h5>Archivo Generado:  {{archivoGenerado}}</h5></strong>
          {% endif  %}

        </div>

    <hr>
{% endif %}

<br><br><br>

{% endblock %}
", "syncbases/form.html.twig", "/home/userdesa/www/reportesundav/apps/templates/syncbases/form.html.twig");
    }
}
