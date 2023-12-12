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

/* reportes/filtroform.twig */
class __TwigTemplate_a715dd758b165d9a2b502f05ed934e5e extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->blocks = [
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
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->enter($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "reportes/filtroform.twig"));

        $__internal_6f47bbe9983af81f1e7450e9a3e3768f = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->enter($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "reportes/filtroform.twig"));

        $this->parent = $this->loadTemplate("base.html.twig", "reportes/filtroform.twig", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
        
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->leave($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof);

        
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->leave($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof);

    }

    // line 3
    public function block_body($context, array $blocks = [])
    {
        $macros = $this->macros;
        $__internal_5a27a8ba21ca79b61932376b2fa922d2 = $this->extensions["Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension"];
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->enter($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "block", "body"));

        $__internal_6f47bbe9983af81f1e7450e9a3e3768f = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->enter($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "block", "body"));

        // line 4
        echo "<style>
form_placesperson{ height:400px; width:400px;}
</style>

";
        // line 8
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new RuntimeError('Variable "app" does not exist.', 8, $this->source); })()), "session", [], "any", false, false, false, 8), "getFlashBag", [], "any", false, false, false, 8), "get", ["message"], "method", false, false, false, 8));
        foreach ($context['_seq'] as $context["_key"] => $context["message"]) {
            // line 9
            echo "<br><div class=\"alert alert-danger\">";
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans($context["message"]), "html", null, true);
            echo "</div>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['message'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 11
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new RuntimeError('Variable "app" does not exist.', 11, $this->source); })()), "session", [], "any", false, false, false, 11), "getFlashBag", [], "any", false, false, false, 11), "get", ["messageerr"], "method", false, false, false, 11));
        foreach ($context['_seq'] as $context["_key"] => $context["message"]) {
            // line 12
            echo "<br><div class=\"alert alert-danger\">";
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans((isset($context["messageerr"]) || array_key_exists("messageerr", $context) ? $context["messageerr"] : (function () { throw new RuntimeError('Variable "messageerr" does not exist.', 12, $this->source); })())), "html", null, true);
            echo "</div>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['message'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 14
        echo "


    <div style=\"width: 70%\" style=\"border: 1px solid black;\">
    <a href=\"";
        // line 18
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new RuntimeError('Variable "app" does not exist.', 18, $this->source); })()), "request", [], "any", false, false, false, 18), "baseUrl", [], "any", false, false, false, 18), "html", null, true);
        echo "/reportes\" class=\"btn-default btn-sm\" style=\"background-color: #ddd;\">VOLVER A LISTADO DE REPORTES</a>
    <hr>
        <h3>";
        // line 20
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["entity"]) || array_key_exists("entity", $context) ? $context["entity"] : (function () { throw new RuntimeError('Variable "entity" does not exist.', 20, $this->source); })()), "name", [], "any", false, false, false, 20), "html", null, true);
        echo "</h3>
        <div class=\"panel panel-info\" style=\"width: 80%\">
          <div class=\"panel-heading\">";
        // line 22
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["entity"]) || array_key_exists("entity", $context) ? $context["entity"] : (function () { throw new RuntimeError('Variable "entity" does not exist.', 22, $this->source); })()), "description", [], "any", false, false, false, 22), "html", null, true);
        echo "</div>
          <hr>
          <div class=\"panel-body\">
            <form action=\"#\"  class=\"form-horizontal\" role=\"form\" method=\"post\">
              ";
        // line 26
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock((isset($context["form"]) || array_key_exists("form", $context) ? $context["form"] : (function () { throw new RuntimeError('Variable "form" does not exist.', 26, $this->source); })()), 'widget');
        echo "
              <input style=\"float: right;\" type=\"submit\" name=\"submit\" class=\"btn btn-info\" value=\"Generar Reporte\" />
              <br clear=\"all\">
              <br clear=\"all\">
            </form>
          </div>
        </div>

        ";
        // line 34
        if (array_key_exists("filename", $context)) {
            // line 35
            echo "        <HR>

        <H4>REPORTE GENERADO.</H4>
        <div class=\"container text-center\">
          <div class=\"row\">
            <div class=\"col\"><strong>";
            // line 40
            echo twig_escape_filter($this->env, (isset($context["mensaje"]) || array_key_exists("mensaje", $context) ? $context["mensaje"] : (function () { throw new RuntimeError('Variable "mensaje" does not exist.', 40, $this->source); })()), "html", null, true);
            echo "</strong>
            </div>
            <div class=\"col\">
              <a href=\"";
            // line 43
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new RuntimeError('Variable "app" does not exist.', 43, $this->source); })()), "request", [], "any", false, false, false, 43), "getSchemeAndHttpHost", [], "any", false, false, false, 43), "html", null, true);
            echo "/rep/";
            echo twig_escape_filter($this->env, (isset($context["filename"]) || array_key_exists("filename", $context) ? $context["filename"] : (function () { throw new RuntimeError('Variable "filename" does not exist.', 43, $this->source); })()), "html", null, true);
            echo "\" class=\"btn btn-success btn-sm\"><i class=\"bi bi-cloud-download-fill\"></i> Descargar reporte</a>
            </div>
            <div class=\"col\">
              <a href=\"";
            // line 46
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new RuntimeError('Variable "app" does not exist.', 46, $this->source); })()), "request", [], "any", false, false, false, 46), "baseUrl", [], "any", false, false, false, 46), "html", null, true);
            echo "/reportes/";
            echo twig_escape_filter($this->env, (isset($context["detalleid"]) || array_key_exists("detalleid", $context) ? $context["detalleid"] : (function () { throw new RuntimeError('Variable "detalleid" does not exist.', 46, $this->source); })()), "html", null, true);
            echo "/detalle\" class=\"btn btn-success btn-sm\"><i class=\"bi bi-grid-3x3\"></i> Ver por pantalla</a>
            </div>
          </div>
        </div>
        ";
        }
        // line 51
        echo "        <HR>
    <a href=\"";
        // line 52
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new RuntimeError('Variable "app" does not exist.', 52, $this->source); })()), "request", [], "any", false, false, false, 52), "baseUrl", [], "any", false, false, false, 52), "html", null, true);
        echo "/reportes\" class=\"btn-default btn-sm\" style=\"background-color: #ddd;\">VOLVER A LISTADO DE REPORTES</a>  
    </div>




<link href=\"/assets/ui/jquery-ui.css\" rel=\"stylesheet\">
<script src=\"/assets/ui/jquery-ui.js\"></script>
<script src=\"/assets/ui/jquery.ui.datepicker-es.js\"></script>
<script type=\"text/javascript\">
";
        // line 62
        echo (isset($context["js"]) || array_key_exists("js", $context) ? $context["js"] : (function () { throw new RuntimeError('Variable "js" does not exist.', 62, $this->source); })());
        echo "
</script> 

";
        
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->leave($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof);

        
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->leave($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof);

    }

    public function getTemplateName()
    {
        return "reportes/filtroform.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  183 => 62,  170 => 52,  167 => 51,  157 => 46,  149 => 43,  143 => 40,  136 => 35,  134 => 34,  123 => 26,  116 => 22,  111 => 20,  106 => 18,  100 => 14,  91 => 12,  87 => 11,  78 => 9,  74 => 8,  68 => 4,  58 => 3,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% extends 'base.html.twig' %}

{% block body %}
<style>
form_placesperson{ height:400px; width:400px;}
</style>

{% for message in app.session.getFlashBag.get('message') %}
<br><div class=\"alert alert-danger\">{{ message |trans}}</div>
{% endfor %}
{% for message in app.session.getFlashBag.get('messageerr') %}
<br><div class=\"alert alert-danger\">{{ messageerr |trans}}</div>
{% endfor %}



    <div style=\"width: 70%\" style=\"border: 1px solid black;\">
    <a href=\"{{app.request.baseUrl}}/reportes\" class=\"btn-default btn-sm\" style=\"background-color: #ddd;\">VOLVER A LISTADO DE REPORTES</a>
    <hr>
        <h3>{{entity.name}}</h3>
        <div class=\"panel panel-info\" style=\"width: 80%\">
          <div class=\"panel-heading\">{{ entity.description }}</div>
          <hr>
          <div class=\"panel-body\">
            <form action=\"#\"  class=\"form-horizontal\" role=\"form\" method=\"post\">
              {{ form_widget( form ) }}
              <input style=\"float: right;\" type=\"submit\" name=\"submit\" class=\"btn btn-info\" value=\"Generar Reporte\" />
              <br clear=\"all\">
              <br clear=\"all\">
            </form>
          </div>
        </div>

        {% if filename is defined  %}
        <HR>

        <H4>REPORTE GENERADO.</H4>
        <div class=\"container text-center\">
          <div class=\"row\">
            <div class=\"col\"><strong>{{ mensaje }}</strong>
            </div>
            <div class=\"col\">
              <a href=\"{{app.request.getSchemeAndHttpHost}}/rep/{{filename}}\" class=\"btn btn-success btn-sm\"><i class=\"bi bi-cloud-download-fill\"></i> Descargar reporte</a>
            </div>
            <div class=\"col\">
              <a href=\"{{app.request.baseUrl}}/reportes/{{detalleid}}/detalle\" class=\"btn btn-success btn-sm\"><i class=\"bi bi-grid-3x3\"></i> Ver por pantalla</a>
            </div>
          </div>
        </div>
        {% endif %}
        <HR>
    <a href=\"{{app.request.baseUrl}}/reportes\" class=\"btn-default btn-sm\" style=\"background-color: #ddd;\">VOLVER A LISTADO DE REPORTES</a>  
    </div>




<link href=\"/assets/ui/jquery-ui.css\" rel=\"stylesheet\">
<script src=\"/assets/ui/jquery-ui.js\"></script>
<script src=\"/assets/ui/jquery.ui.datepicker-es.js\"></script>
<script type=\"text/javascript\">
{{js|raw}}
</script> 

{% endblock %}
", "reportes/filtroform.twig", "/home/ntbdesa/www/reportesundav/apps/templates/reportes/filtroform.twig");
    }
}
