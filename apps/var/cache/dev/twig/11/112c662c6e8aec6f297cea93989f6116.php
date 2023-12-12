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

/* sysconfigcompany/index.html.twig */
class __TwigTemplate_be0efcac6317aa1cc403e8cb85e92d1b extends Template
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
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->enter($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "sysconfigcompany/index.html.twig"));

        $__internal_6f47bbe9983af81f1e7450e9a3e3768f = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->enter($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "sysconfigcompany/index.html.twig"));

        $this->parent = $this->loadTemplate("base.html.twig", "sysconfigcompany/index.html.twig", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
        
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->leave($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof);

        
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->leave($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof);

    }

    // line 4
    public function block_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        $__internal_5a27a8ba21ca79b61932376b2fa922d2 = $this->extensions["Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension"];
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->enter($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "block", "title"));

        $__internal_6f47bbe9983af81f1e7450e9a3e3768f = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->enter($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "block", "title"));

        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Listado de SysConfigCompany"), "html", null, true);
        
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->leave($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof);

        
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->leave($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof);

    }

    // line 6
    public function block_body($context, array $blocks = [])
    {
        $macros = $this->macros;
        $__internal_5a27a8ba21ca79b61932376b2fa922d2 = $this->extensions["Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension"];
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->enter($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "block", "body"));

        $__internal_6f47bbe9983af81f1e7450e9a3e3768f = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->enter($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "block", "body"));

        // line 7
        echo "<h1>";
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Lista de SysConfigCompany"), "html", null, true);
        echo "</h1>

";
        // line 9
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new RuntimeError('Variable "app" does not exist.', 9, $this->source); })()), "session", [], "any", false, false, false, 9), "getFlashBag", [], "any", false, false, false, 9), "get", ["message"], "method", false, false, false, 9));
        foreach ($context['_seq'] as $context["_key"] => $context["message"]) {
            // line 10
            echo "    <br><div class=\"alert alert-success\" role=\"alert\">";
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans($context["message"]), "html", null, true);
            echo "</div>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['message'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 12
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new RuntimeError('Variable "app" does not exist.', 12, $this->source); })()), "session", [], "any", false, false, false, 12), "getFlashBag", [], "any", false, false, false, 12), "get", ["messageerr"], "method", false, false, false, 12));
        foreach ($context['_seq'] as $context["_key"] => $context["message"]) {
            // line 13
            echo "    <br><div class=\"alert alert-danger\" role=\"alert\">";
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans($context["message"]), "html", null, true);
            echo "</div>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['message'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 15
        echo "

<a class=\"btn btn-primary\" role=\"button\" aria-disabled=\"true\" href=\"";
        // line 17
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("sysconfigcompany_new");
        echo "\">";
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Nuevo SysConfigCompany"), "html", null, true);
        echo "</a>
<table id=\"tblist\" class=\"table table-sm table-striped table-bordered table-hover\">
<thead>
<tr>
 <th data-field=\"id\">";
        // line 21
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Id"), "html", null, true);
        echo "</th>
 <th data-field=\"companyId\">";
        // line 22
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Company_id"), "html", null, true);
        echo "</th>
 <th data-field=\"configgenId\">";
        // line 23
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Configgen_id"), "html", null, true);
        echo "</th>
 <th data-field=\"name\">";
        // line 24
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Name"), "html", null, true);
        echo "</th>
 <th data-field=\"value\">";
        // line 25
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Value"), "html", null, true);
        echo "</th>
 <th data-field=\"description\">";
        // line 26
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Description"), "html", null, true);
        echo "</th>
 <th data-field=\"active\">";
        // line 27
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Active"), "html", null, true);
        echo "</th>
 <th data-field=\"opcionSysConfigCompany\">";
        // line 28
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Opcion"), "html", null, true);
        echo "</th>
</tr>
</thead>
</table>

<script>
\$(document).ready(function() {
  \$('#tblist').DataTable({
    \"stateSave\":true,\"processing\":true,
    \"language\":{\"url\":\"";
        // line 37
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\AssetExtension']->getAssetUrl("/assets/datatables/Spanish.json"), "html", null, true);
        echo "\"},
    \"ajax\":\"";
        // line 38
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("sysconfigcompany_list");
        echo "\",
    \"order\": [[ 0, \"desc\" ]],
    \"columns\":[
      {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/sysconfigcompany/\"+oData.id+\"/edit'>\"+oData.id+\"</a>\");}}},
      {\"data\":\"companyId\"},
      {\"data\":\"configgenId\"},
      {\"data\":\"name\"},
      {\"data\":\"value\"},
      {\"data\":\"description\"},
      {\"data\":\"active\"},
      {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/sysconfigcompany/\"+oData.id+\"/delete'><i class='bi bi-trash'></i></a>\");}}},
    ]
   });   
});
</script>

";
        
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->leave($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof);

        
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->leave($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof);

    }

    public function getTemplateName()
    {
        return "sysconfigcompany/index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  177 => 38,  173 => 37,  161 => 28,  157 => 27,  153 => 26,  149 => 25,  145 => 24,  141 => 23,  137 => 22,  133 => 21,  124 => 17,  120 => 15,  111 => 13,  107 => 12,  98 => 10,  94 => 9,  88 => 7,  78 => 6,  59 => 4,  36 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% extends 'base.html.twig' %}


{% block title %}{{ 'Listado de SysConfigCompany' | trans }}{% endblock %}

{% block body %}
<h1>{{ 'Lista de SysConfigCompany' | trans }}</h1>

{% for message in app.session.getFlashBag.get('message') %}
    <br><div class=\"alert alert-success\" role=\"alert\">{{message| trans}}</div>
{% endfor %}
{% for message in app.session.getFlashBag.get('messageerr') %}
    <br><div class=\"alert alert-danger\" role=\"alert\">{{message | trans }}</div>
{% endfor %}


<a class=\"btn btn-primary\" role=\"button\" aria-disabled=\"true\" href=\"{{url('sysconfigcompany_new')}}\">{{ 'Nuevo SysConfigCompany' | trans }}</a>
<table id=\"tblist\" class=\"table table-sm table-striped table-bordered table-hover\">
<thead>
<tr>
 <th data-field=\"id\">{{ 'Id' | trans}}</th>
 <th data-field=\"companyId\">{{ 'Company_id' | trans}}</th>
 <th data-field=\"configgenId\">{{ 'Configgen_id' | trans}}</th>
 <th data-field=\"name\">{{ 'Name' | trans}}</th>
 <th data-field=\"value\">{{ 'Value' | trans}}</th>
 <th data-field=\"description\">{{ 'Description' | trans}}</th>
 <th data-field=\"active\">{{ 'Active' | trans}}</th>
 <th data-field=\"opcionSysConfigCompany\">{{'Opcion' | trans}}</th>
</tr>
</thead>
</table>

<script>
\$(document).ready(function() {
  \$('#tblist').DataTable({
    \"stateSave\":true,\"processing\":true,
    \"language\":{\"url\":\"{{asset('/assets/datatables/Spanish.json')}}\"},
    \"ajax\":\"{{url('sysconfigcompany_list')}}\",
    \"order\": [[ 0, \"desc\" ]],
    \"columns\":[
      {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/sysconfigcompany/\"+oData.id+\"/edit'>\"+oData.id+\"</a>\");}}},
      {\"data\":\"companyId\"},
      {\"data\":\"configgenId\"},
      {\"data\":\"name\"},
      {\"data\":\"value\"},
      {\"data\":\"description\"},
      {\"data\":\"active\"},
      {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/sysconfigcompany/\"+oData.id+\"/delete'><i class='bi bi-trash'></i></a>\");}}},
    ]
   });   
});
</script>

{% endblock %}
", "sysconfigcompany/index.html.twig", "/home/ntbdesa/www/reportesundav/apps/templates/sysconfigcompany/index.html.twig");
    }
}
