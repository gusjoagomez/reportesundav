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

/* seccompanybranch/index.html.twig */
class __TwigTemplate_8ff9cdb6385d3142fb2175238c6b811b extends Template
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
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->enter($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "seccompanybranch/index.html.twig"));

        $__internal_6f47bbe9983af81f1e7450e9a3e3768f = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->enter($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "seccompanybranch/index.html.twig"));

        $this->parent = $this->loadTemplate("base.html.twig", "seccompanybranch/index.html.twig", 1);
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

        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Listado de SecCompanyBranch"), "html", null, true);
        
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
        echo "<h1>";
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Lista de Sucursales"), "html", null, true);
        echo "</h1>

";
        // line 8
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new RuntimeError('Variable "app" does not exist.', 8, $this->source); })()), "session", [], "any", false, false, false, 8), "getFlashBag", [], "any", false, false, false, 8), "get", ["message"], "method", false, false, false, 8));
        foreach ($context['_seq'] as $context["_key"] => $context["message"]) {
            // line 9
            echo "    <br><div class=\"alert alert-success\" role=\"alert\">";
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
            echo "    <br><div class=\"alert alert-danger\" role=\"alert\">";
            echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans($context["message"]), "html", null, true);
            echo "</div>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['message'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 14
        echo "

<h1>";
        // line 16
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Empresa:"), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["company"]) || array_key_exists("company", $context) ? $context["company"] : (function () { throw new RuntimeError('Variable "company" does not exist.', 16, $this->source); })()), "name", [], "any", false, false, false, 16), "html", null, true);
        echo "</h1>
<hr>
<h2>";
        // line 18
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Lista de Sucursales"), "html", null, true);
        echo "</h2>

<a class=\"btn btn-primary\" role=\"button\" aria-disabled=\"true\" href=\"";
        // line 20
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("seccompanybranch_new", ["company" => twig_get_attribute($this->env, $this->source, (isset($context["company"]) || array_key_exists("company", $context) ? $context["company"] : (function () { throw new RuntimeError('Variable "company" does not exist.', 20, $this->source); })()), "id", [], "any", false, false, false, 20)]), "html", null, true);
        echo "\">";
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Nueva sucursal"), "html", null, true);
        echo "</a>
<table id=\"tblist\" class=\"table table-sm table-striped table-bordered table-hover\">
<thead>
<tr>
 <th data-field=\"name\">";
        // line 24
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Nombre sucursal"), "html", null, true);
        echo "</th>
 <th data-field=\"phone\">";
        // line 25
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Telefono"), "html", null, true);
        echo "</th>
 <th data-field=\"addStreet\">";
        // line 26
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Calle"), "html", null, true);
        echo "</th>
 <th data-field=\"addNumber\">";
        // line 27
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Numero"), "html", null, true);
        echo "</th>
 <th data-field=\"zipcode\">";
        // line 28
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Cod.Postal"), "html", null, true);
        echo "</th>
 <th data-field=\"active\">";
        // line 29
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Active"), "html", null, true);
        echo "</th> 
 <th data-field=\"opcion\">";
        // line 30
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
        // line 39
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\AssetExtension']->getAssetUrl("/assets/datatables/Spanish.json"), "html", null, true);
        echo "\"},
    \"ajax\":\"";
        // line 40
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("seccompanybranch_list", ["company" => twig_get_attribute($this->env, $this->source, (isset($context["company"]) || array_key_exists("company", $context) ? $context["company"] : (function () { throw new RuntimeError('Variable "company" does not exist.', 40, $this->source); })()), "id", [], "any", false, false, false, 40)]), "html", null, true);
        echo "\",
    \"order\": [[ 0, \"desc\" ]],
    \"columns\":[
      {\"data\":\"name\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/seccompanybranch/\"+oData.id+\"/edit'>\"+oData.name+\"</a>\");}}},
      {\"data\":\"phone\"},
      {\"data\":\"addStreet\"},
      {\"data\":\"addNumber\"},
      {\"data\":\"zipcode\"},
      {\"data\":\"active\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.active==1){\$(nTd).html(\"✅\");}else{\$(nTd).html(\"❌\");}}},
      {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/seccompanybranch/\"+oData.id+\"/delete'><i class='bi bi-trash'></i></a>\");}}},
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
        return "seccompanybranch/index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  185 => 40,  181 => 39,  169 => 30,  165 => 29,  161 => 28,  157 => 27,  153 => 26,  149 => 25,  145 => 24,  136 => 20,  131 => 18,  124 => 16,  120 => 14,  111 => 12,  107 => 11,  98 => 9,  94 => 8,  88 => 6,  78 => 5,  59 => 3,  36 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% extends 'base.html.twig' %}

{% block title %}{{ 'Listado de SecCompanyBranch' | trans }}{% endblock %}

{% block body %}
<h1>{{ 'Lista de Sucursales' | trans }}</h1>

{% for message in app.session.getFlashBag.get('message') %}
    <br><div class=\"alert alert-success\" role=\"alert\">{{message| trans}}</div>
{% endfor %}
{% for message in app.session.getFlashBag.get('messageerr') %}
    <br><div class=\"alert alert-danger\" role=\"alert\">{{message | trans }}</div>
{% endfor %}


<h1>{{ 'Empresa:' | trans }} {{ company.name }}</h1>
<hr>
<h2>{{ 'Lista de Sucursales' | trans }}</h2>

<a class=\"btn btn-primary\" role=\"button\" aria-disabled=\"true\" href=\"{{url('seccompanybranch_new',{'company': company.id})}}\">{{ 'Nueva sucursal' | trans }}</a>
<table id=\"tblist\" class=\"table table-sm table-striped table-bordered table-hover\">
<thead>
<tr>
 <th data-field=\"name\">{{ 'Nombre sucursal' | trans}}</th>
 <th data-field=\"phone\">{{ 'Telefono' | trans}}</th>
 <th data-field=\"addStreet\">{{ 'Calle' | trans}}</th>
 <th data-field=\"addNumber\">{{ 'Numero' | trans}}</th>
 <th data-field=\"zipcode\">{{ 'Cod.Postal' | trans}}</th>
 <th data-field=\"active\">{{ 'Active' | trans}}</th> 
 <th data-field=\"opcion\">{{'Opcion' | trans}}</th>
</tr>
</thead>
</table>

<script>
\$(document).ready(function() {
  \$('#tblist').DataTable({
    \"stateSave\":true,\"processing\":true,
    \"language\":{\"url\":\"{{asset('/assets/datatables/Spanish.json')}}\"},
    \"ajax\":\"{{url('seccompanybranch_list',{'company': company.id})}}\",
    \"order\": [[ 0, \"desc\" ]],
    \"columns\":[
      {\"data\":\"name\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/seccompanybranch/\"+oData.id+\"/edit'>\"+oData.name+\"</a>\");}}},
      {\"data\":\"phone\"},
      {\"data\":\"addStreet\"},
      {\"data\":\"addNumber\"},
      {\"data\":\"zipcode\"},
      {\"data\":\"active\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.active==1){\$(nTd).html(\"✅\");}else{\$(nTd).html(\"❌\");}}},
      {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/seccompanybranch/\"+oData.id+\"/delete'><i class='bi bi-trash'></i></a>\");}}},
    ]
   });   
});
</script>

{% endblock %}
", "seccompanybranch/index.html.twig", "/home/ntbdesa/www/reportesundav/apps/templates/seccompanybranch/index.html.twig");
    }
}
