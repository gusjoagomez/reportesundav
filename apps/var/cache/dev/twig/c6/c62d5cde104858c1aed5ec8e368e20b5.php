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

/* general/opciones_centro.html.twig */
class __TwigTemplate_3caade3289ab8f2129fbfcf9deac93da extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        $__internal_5a27a8ba21ca79b61932376b2fa922d2 = $this->extensions["Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension"];
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->enter($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "general/opciones_centro.html.twig"));

        $__internal_6f47bbe9983af81f1e7450e9a3e3768f = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->enter($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "general/opciones_centro.html.twig"));

        // line 1
        echo "<h5>Opciones para el centro medico</h5>
<a href=\"/medpatient/";
        // line 2
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["company"]) || array_key_exists("company", $context) ? $context["company"] : (function () { throw new RuntimeError('Variable "company" does not exist.', 2, $this->source); })()), "id", [], "any", false, false, false, 2), "html", null, true);
        echo "/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Pacientes</a>
<a href=\"/secuser/";
        // line 3
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["company"]) || array_key_exists("company", $context) ? $context["company"] : (function () { throw new RuntimeError('Variable "company" does not exist.', 3, $this->source); })()), "id", [], "any", false, false, false, 3), "html", null, true);
        echo "/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Médicos/Usuarios</a>
<a href=\"/seccompanybranch/";
        // line 4
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["company"]) || array_key_exists("company", $context) ? $context["company"] : (function () { throw new RuntimeError('Variable "company" does not exist.', 4, $this->source); })()), "id", [], "any", false, false, false, 4), "html", null, true);
        echo "/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Sucursales</a>
<a href=\"/medpractice/";
        // line 5
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["company"]) || array_key_exists("company", $context) ? $context["company"] : (function () { throw new RuntimeError('Variable "company" does not exist.', 5, $this->source); })()), "id", [], "any", false, false, false, 5), "html", null, true);
        echo "/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Practicas</a>
<a href=\"/medspeciality/";
        // line 6
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["company"]) || array_key_exists("company", $context) ? $context["company"] : (function () { throw new RuntimeError('Variable "company" does not exist.', 6, $this->source); })()), "id", [], "any", false, false, false, 6), "html", null, true);
        echo "/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Especialidades</a>
<a href=\"/medqueue/";
        // line 7
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["company"]) || array_key_exists("company", $context) ? $context["company"] : (function () { throw new RuntimeError('Variable "company" does not exist.', 7, $this->source); })()), "id", [], "any", false, false, false, 7), "html", null, true);
        echo "/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Turneros</a>
<a href=\"/sysbranchboxes/";
        // line 8
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["company"]) || array_key_exists("company", $context) ? $context["company"] : (function () { throw new RuntimeError('Variable "company" does not exist.', 8, $this->source); })()), "id", [], "any", false, false, false, 8), "html", null, true);
        echo "/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Boxes/consultorio</a>
<a href=\"/sysnowork/";
        // line 9
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["company"]) || array_key_exists("company", $context) ? $context["company"] : (function () { throw new RuntimeError('Variable "company" does not exist.', 9, $this->source); })()), "id", [], "any", false, false, false, 9), "html", null, true);
        echo "/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Feriados</a>
<a href=\"/systypecompany/";
        // line 10
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["company"]) || array_key_exists("company", $context) ? $context["company"] : (function () { throw new RuntimeError('Variable "company" does not exist.', 10, $this->source); })()), "id", [], "any", false, false, false, 10), "html", null, true);
        echo "/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Tipos datos</a>
<a href=\"/seccompanyskin/";
        // line 11
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["company"]) || array_key_exists("company", $context) ? $context["company"] : (function () { throw new RuntimeError('Variable "company" does not exist.', 11, $this->source); })()), "id", [], "any", false, false, false, 11), "html", null, true);
        echo "/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Templates</a>";
        
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->leave($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof);

        
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->leave($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof);

    }

    public function getTemplateName()
    {
        return "general/opciones_centro.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  82 => 11,  78 => 10,  74 => 9,  70 => 8,  66 => 7,  62 => 6,  58 => 5,  54 => 4,  50 => 3,  46 => 2,  43 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<h5>Opciones para el centro medico</h5>
<a href=\"/medpatient/{{company.id}}/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Pacientes</a>
<a href=\"/secuser/{{company.id}}/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Médicos/Usuarios</a>
<a href=\"/seccompanybranch/{{company.id}}/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Sucursales</a>
<a href=\"/medpractice/{{company.id}}/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Practicas</a>
<a href=\"/medspeciality/{{company.id}}/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Especialidades</a>
<a href=\"/medqueue/{{company.id}}/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Turneros</a>
<a href=\"/sysbranchboxes/{{company.id}}/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Boxes/consultorio</a>
<a href=\"/sysnowork/{{company.id}}/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Feriados</a>
<a href=\"/systypecompany/{{company.id}}/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Tipos datos</a>
<a href=\"/seccompanyskin/{{company.id}}/index\" class=\"btn btn-primary\" tabindex=\"-1\" role=\"button\" aria-disabled=\"true\">Templates</a>", "general/opciones_centro.html.twig", "/home/ntbdesa/www/reportesundav/apps/templates/general/opciones_centro.html.twig");
    }
}
