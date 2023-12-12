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

/* seccompanyskin/index.html.twig */
class __TwigTemplate_d48b291888b2db8b0fc545cfdb5207c3 extends Template
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
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->enter($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "seccompanyskin/index.html.twig"));

        $__internal_6f47bbe9983af81f1e7450e9a3e3768f = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->enter($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "seccompanyskin/index.html.twig"));

        $this->parent = $this->loadTemplate("base.html.twig", "seccompanyskin/index.html.twig", 1);
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

        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Listado de SecCompanySkin"), "html", null, true);
        
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
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Lista de SecCompanySkin"), "html", null, true);
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
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("seccompanyskin_new");
        echo "\">";
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Nuevo SecCompanySkin"), "html", null, true);
        echo "</a>
<table id=\"tblist\" class=\"table table-sm table-striped table-bordered table-hover\">
<thead>
<tr>
 <th data-field=\"companyId\">";
        // line 21
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Company_id"), "html", null, true);
        echo "</th>
 <th data-field=\"createdBy\">";
        // line 22
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Created_by"), "html", null, true);
        echo "</th>
 <th data-field=\"updatedBy\">";
        // line 23
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Updated_by"), "html", null, true);
        echo "</th>
 <th data-field=\"deletedBy\">";
        // line 24
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Deleted_by"), "html", null, true);
        echo "</th>
 <th data-field=\"createdAt\">";
        // line 25
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Created_at"), "html", null, true);
        echo "</th>
 <th data-field=\"updatedAt\">";
        // line 26
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Updated_at"), "html", null, true);
        echo "</th>
 <th data-field=\"deletedAt\">";
        // line 27
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Deleted_at"), "html", null, true);
        echo "</th>
 <th data-field=\"headerhtml\">";
        // line 28
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Headerhtml"), "html", null, true);
        echo "</th>
 <th data-field=\"footerhtml\">";
        // line 29
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Footerhtml"), "html", null, true);
        echo "</th>
 <th data-field=\"css\">";
        // line 30
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Css"), "html", null, true);
        echo "</th>
 <th data-field=\"active\">";
        // line 31
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Active"), "html", null, true);
        echo "</th>
 <th data-field=\"opcionSecCompanySkin\">";
        // line 32
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
        // line 41
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\AssetExtension']->getAssetUrl("/assets/datatables/Spanish.json"), "html", null, true);
        echo "\"},
    \"ajax\":\"";
        // line 42
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("seccompanyskin_list");
        echo "\",
    \"order\": [[ 0, \"desc\" ]],
    \"columns\":[
      {\"data\":\"companyId\"},
      {\"data\":\"createdBy\"},
      {\"data\":\"updatedBy\"},
      {\"data\":\"deletedBy\"},
      {\"data\":\"createdAt\"},
      {\"data\":\"updatedAt\"},
      {\"data\":\"deletedAt\"},
      {\"data\":\"headerhtml\"},
      {\"data\":\"footerhtml\"},
      {\"data\":\"css\"},
      {\"data\":\"active\"},
      {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/seccompanyskin/\"+oData.id+\"/delete'><i class='bi bi-trash'></i></a>\");}}},
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
        return "seccompanyskin/index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  193 => 42,  189 => 41,  177 => 32,  173 => 31,  169 => 30,  165 => 29,  161 => 28,  157 => 27,  153 => 26,  149 => 25,  145 => 24,  141 => 23,  137 => 22,  133 => 21,  124 => 17,  120 => 15,  111 => 13,  107 => 12,  98 => 10,  94 => 9,  88 => 7,  78 => 6,  59 => 4,  36 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% extends 'base.html.twig' %}


{% block title %}{{ 'Listado de SecCompanySkin' | trans }}{% endblock %}

{% block body %}
<h1>{{ 'Lista de SecCompanySkin' | trans }}</h1>

{% for message in app.session.getFlashBag.get('message') %}
    <br><div class=\"alert alert-success\" role=\"alert\">{{message| trans}}</div>
{% endfor %}
{% for message in app.session.getFlashBag.get('messageerr') %}
    <br><div class=\"alert alert-danger\" role=\"alert\">{{message | trans }}</div>
{% endfor %}


<a class=\"btn btn-primary\" role=\"button\" aria-disabled=\"true\" href=\"{{url('seccompanyskin_new')}}\">{{ 'Nuevo SecCompanySkin' | trans }}</a>
<table id=\"tblist\" class=\"table table-sm table-striped table-bordered table-hover\">
<thead>
<tr>
 <th data-field=\"companyId\">{{ 'Company_id' | trans}}</th>
 <th data-field=\"createdBy\">{{ 'Created_by' | trans}}</th>
 <th data-field=\"updatedBy\">{{ 'Updated_by' | trans}}</th>
 <th data-field=\"deletedBy\">{{ 'Deleted_by' | trans}}</th>
 <th data-field=\"createdAt\">{{ 'Created_at' | trans}}</th>
 <th data-field=\"updatedAt\">{{ 'Updated_at' | trans}}</th>
 <th data-field=\"deletedAt\">{{ 'Deleted_at' | trans}}</th>
 <th data-field=\"headerhtml\">{{ 'Headerhtml' | trans}}</th>
 <th data-field=\"footerhtml\">{{ 'Footerhtml' | trans}}</th>
 <th data-field=\"css\">{{ 'Css' | trans}}</th>
 <th data-field=\"active\">{{ 'Active' | trans}}</th>
 <th data-field=\"opcionSecCompanySkin\">{{'Opcion' | trans}}</th>
</tr>
</thead>
</table>

<script>
\$(document).ready(function() {
  \$('#tblist').DataTable({
    \"stateSave\":true,\"processing\":true,
    \"language\":{\"url\":\"{{asset('/assets/datatables/Spanish.json')}}\"},
    \"ajax\":\"{{url('seccompanyskin_list')}}\",
    \"order\": [[ 0, \"desc\" ]],
    \"columns\":[
      {\"data\":\"companyId\"},
      {\"data\":\"createdBy\"},
      {\"data\":\"updatedBy\"},
      {\"data\":\"deletedBy\"},
      {\"data\":\"createdAt\"},
      {\"data\":\"updatedAt\"},
      {\"data\":\"deletedAt\"},
      {\"data\":\"headerhtml\"},
      {\"data\":\"footerhtml\"},
      {\"data\":\"css\"},
      {\"data\":\"active\"},
      {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/seccompanyskin/\"+oData.id+\"/delete'><i class='bi bi-trash'></i></a>\");}}},
    ]
   });   
});
</script>

{% endblock %}
", "seccompanyskin/index.html.twig", "/home/ntbdesa/www/reportesundav/apps/templates/seccompanyskin/index.html.twig");
    }
}
