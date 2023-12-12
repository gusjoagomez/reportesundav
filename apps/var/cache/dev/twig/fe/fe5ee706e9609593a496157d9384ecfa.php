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

/* sysdoctornowork/index.html.twig */
class __TwigTemplate_1636082cd27e516898234817477d28d4 extends Template
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
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->enter($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "sysdoctornowork/index.html.twig"));

        $__internal_6f47bbe9983af81f1e7450e9a3e3768f = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->enter($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "sysdoctornowork/index.html.twig"));

        $this->parent = $this->loadTemplate("base.html.twig", "sysdoctornowork/index.html.twig", 1);
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

        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Listado de SysDoctornowork"), "html", null, true);
        
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
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Lista de SysDoctornowork"), "html", null, true);
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
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("sysdoctornowork_new");
        echo "\">";
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Nuevo SysDoctornowork"), "html", null, true);
        echo "</a>
<table id=\"tblist\" class=\"table table-sm table-striped table-bordered table-hover\">
<thead>
<tr>
 <th data-field=\"id\">";
        // line 21
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Id"), "html", null, true);
        echo "</th>
 <th data-field=\"updatedBy\">";
        // line 22
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Updated_by"), "html", null, true);
        echo "</th>
 <th data-field=\"updatedAt\">";
        // line 23
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Updated_at"), "html", null, true);
        echo "</th>
 <th data-field=\"deletedBy\">";
        // line 24
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Deleted_by"), "html", null, true);
        echo "</th>
 <th data-field=\"fromdate\">";
        // line 25
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Fromdate"), "html", null, true);
        echo "</th>
 <th data-field=\"todate\">";
        // line 26
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Todate"), "html", null, true);
        echo "</th>
 <th data-field=\"createdBy\">";
        // line 27
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Created_by"), "html", null, true);
        echo "</th>
 <th data-field=\"createdAt\">";
        // line 28
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Created_at"), "html", null, true);
        echo "</th>
 <th data-field=\"doctorId\">";
        // line 29
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Doctor_id"), "html", null, true);
        echo "</th>
 <th data-field=\"description\">";
        // line 30
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Description"), "html", null, true);
        echo "</th>
 <th data-field=\"deletedAt\">";
        // line 31
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("Deleted_at"), "html", null, true);
        echo "</th>
 <th data-field=\"opcionSysDoctornowork\">";
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
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("sysdoctornowork_list");
        echo "\",
    \"order\": [[ 0, \"desc\" ]],
    \"columns\":[
      {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/sysdoctornowork/\"+oData.id+\"/edit'>\"+oData.id+\"</a>\");}}},
      {\"data\":\"updatedBy\"},
      {\"data\":\"updatedAt\"},
      {\"data\":\"deletedBy\"},
      {\"data\":\"fromdate\"},
      {\"data\":\"todate\"},
      {\"data\":\"createdBy\"},
      {\"data\":\"createdAt\"},
      {\"data\":\"doctorId\"},
      {\"data\":\"description\"},
      {\"data\":\"deletedAt\"},
      {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/sysdoctornowork/\"+oData.id+\"/delete'><i class='bi bi-trash'></i></a>\");}}},
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
        return "sysdoctornowork/index.html.twig";
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


{% block title %}{{ 'Listado de SysDoctornowork' | trans }}{% endblock %}

{% block body %}
<h1>{{ 'Lista de SysDoctornowork' | trans }}</h1>

{% for message in app.session.getFlashBag.get('message') %}
    <br><div class=\"alert alert-success\" role=\"alert\">{{message| trans}}</div>
{% endfor %}
{% for message in app.session.getFlashBag.get('messageerr') %}
    <br><div class=\"alert alert-danger\" role=\"alert\">{{message | trans }}</div>
{% endfor %}


<a class=\"btn btn-primary\" role=\"button\" aria-disabled=\"true\" href=\"{{url('sysdoctornowork_new')}}\">{{ 'Nuevo SysDoctornowork' | trans }}</a>
<table id=\"tblist\" class=\"table table-sm table-striped table-bordered table-hover\">
<thead>
<tr>
 <th data-field=\"id\">{{ 'Id' | trans}}</th>
 <th data-field=\"updatedBy\">{{ 'Updated_by' | trans}}</th>
 <th data-field=\"updatedAt\">{{ 'Updated_at' | trans}}</th>
 <th data-field=\"deletedBy\">{{ 'Deleted_by' | trans}}</th>
 <th data-field=\"fromdate\">{{ 'Fromdate' | trans}}</th>
 <th data-field=\"todate\">{{ 'Todate' | trans}}</th>
 <th data-field=\"createdBy\">{{ 'Created_by' | trans}}</th>
 <th data-field=\"createdAt\">{{ 'Created_at' | trans}}</th>
 <th data-field=\"doctorId\">{{ 'Doctor_id' | trans}}</th>
 <th data-field=\"description\">{{ 'Description' | trans}}</th>
 <th data-field=\"deletedAt\">{{ 'Deleted_at' | trans}}</th>
 <th data-field=\"opcionSysDoctornowork\">{{'Opcion' | trans}}</th>
</tr>
</thead>
</table>

<script>
\$(document).ready(function() {
  \$('#tblist').DataTable({
    \"stateSave\":true,\"processing\":true,
    \"language\":{\"url\":\"{{asset('/assets/datatables/Spanish.json')}}\"},
    \"ajax\":\"{{url('sysdoctornowork_list')}}\",
    \"order\": [[ 0, \"desc\" ]],
    \"columns\":[
      {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/sysdoctornowork/\"+oData.id+\"/edit'>\"+oData.id+\"</a>\");}}},
      {\"data\":\"updatedBy\"},
      {\"data\":\"updatedAt\"},
      {\"data\":\"deletedBy\"},
      {\"data\":\"fromdate\"},
      {\"data\":\"todate\"},
      {\"data\":\"createdBy\"},
      {\"data\":\"createdAt\"},
      {\"data\":\"doctorId\"},
      {\"data\":\"description\"},
      {\"data\":\"deletedAt\"},
      {\"data\":\"id\",fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {if(oData.id) {\$(nTd).html(\"<a href='/sysdoctornowork/\"+oData.id+\"/delete'><i class='bi bi-trash'></i></a>\");}}},
    ]
   });   
});
</script>

{% endblock %}
", "sysdoctornowork/index.html.twig", "/home/ntbdesa/www/reportesundav/apps/templates/sysdoctornowork/index.html.twig");
    }
}
