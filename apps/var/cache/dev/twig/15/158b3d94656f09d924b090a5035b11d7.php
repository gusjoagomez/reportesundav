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

/* menu/index.html.twig */
class __TwigTemplate_8c6d9a46a7eb3dd0a759ed730f9eba8c extends Template
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
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->enter($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "menu/index.html.twig"));

        $__internal_6f47bbe9983af81f1e7450e9a3e3768f = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->enter($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof = new \Twig\Profiler\Profile($this->getTemplateName(), "template", "menu/index.html.twig"));

        // line 1
        echo "<nav class=\"navbar navbar-expand-lg bg-dark\" data-bs-theme=\"dark\">
  <div class=\"container-fluid\">
    <a class=\"navbar-brand\" href=\"#\">MENU:</a>
    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">
      <span class=\"navbar-toggler-icon\"></span>
    </button>
    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">
        
      ";
        // line 9
        if (twig_get_attribute($this->env, $this->source, ($context["items"] ?? null), 0, [], "array", true, true, false, 9)) {
            // line 10
            echo "        <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">
        ";
            // line 11
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, (isset($context["items"]) || array_key_exists("items", $context) ? $context["items"] : (function () { throw new RuntimeError('Variable "items" does not exist.', 11, $this->source); })()), 0, [], "array", false, false, false, 11));
            foreach ($context['_seq'] as $context["id_n0"] => $context["props_n0"]) {
                // line 12
                echo "            <li class=\"nav-item dropdown\" id=\"menu_";
                echo twig_escape_filter($this->env, $context["id_n0"], "html", null, true);
                echo "\">
                
                <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">
                    ";
                // line 15
                if ((twig_get_attribute($this->env, $this->source, $context["props_n0"], "icon", [], "array", false, false, false, 15) != "")) {
                    echo "<span class=\"";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["props_n0"], "icon", [], "any", false, false, false, 15), "html", null, true);
                    echo "\"></span>";
                }
                // line 16
                echo "                    ";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["props_n0"], "nombre", [], "any", false, false, false, 16), "html", null, true);
                echo "
                </a>
                <ul class=\"dropdown-menu\">
                    ";
                // line 19
                if (twig_get_attribute($this->env, $this->source, ($context["items"] ?? null), twig_get_attribute($this->env, $this->source, $context["props_n0"], "id", [], "array", false, false, false, 19), [], "array", true, true, false, 19)) {
                    // line 20
                    echo "                    ";
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, (isset($context["items"]) || array_key_exists("items", $context) ? $context["items"] : (function () { throw new RuntimeError('Variable "items" does not exist.', 20, $this->source); })()), twig_get_attribute($this->env, $this->source, $context["props_n0"], "id", [], "array", false, false, false, 20), [], "array", false, false, false, 20));
                    foreach ($context['_seq'] as $context["id_n1"] => $context["props_n1"]) {
                        // line 21
                        echo "                        ";
                        if ((twig_get_attribute($this->env, $this->source, $context["props_n1"], "activo", [], "array", true, true, false, 21) && twig_get_attribute($this->env, $this->source, $context["props_n1"], "activo", [], "array", false, false, false, 21))) {
                            // line 22
                            echo "                        ";
                            if ((twig_get_attribute($this->env, $this->source, $context["props_n1"], "divider", [], "array", false, false, false, 22) == 1)) {
                                echo "  
                            <li><hr class=\"dropdown-divider\"></li>
                        ";
                            }
                            // line 25
                            echo "                        <li>
                            ";
                            // line 26
                            $context["link"] = "#";
                            // line 27
                            echo "                            ";
                            if ((twig_get_attribute($this->env, $this->source, $context["props_n1"], "link", [], "any", true, true, false, 27) && (twig_get_attribute($this->env, $this->source, $context["props_n1"], "link", [], "any", false, false, false, 27) != ""))) {
                                echo "                                    
                              ";
                                // line 28
                                $context["link"] = twig_get_attribute($this->env, $this->source, $context["props_n1"], "link", [], "any", false, false, false, 28);
                                // line 29
                                echo "                            ";
                            }
                            // line 30
                            echo "
                            <a href=\"";
                            // line 31
                            echo twig_escape_filter($this->env, ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new RuntimeError('Variable "app" does not exist.', 31, $this->source); })()), "request", [], "any", false, false, false, 31), "baseUrl", [], "any", false, false, false, 31) . "/") . (isset($context["link"]) || array_key_exists("link", $context) ? $context["link"] : (function () { throw new RuntimeError('Variable "link" does not exist.', 31, $this->source); })())), "html", null, true);
                            echo "\" class=\"dropdown-item\" >
                                ";
                            // line 32
                            if ((twig_get_attribute($this->env, $this->source, $context["props_n1"], "icon", [], "array", false, false, false, 32) != "")) {
                                echo "<span class=\"";
                                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["props_n1"], "icon", [], "any", false, false, false, 32), "html", null, true);
                                echo "\"></span>";
                            }
                            echo " ";
                            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["props_n1"], "nombre", [], "any", false, false, false, 32), "html", null, true);
                            echo "
                            </a>

                        </li>
                        ";
                            // line 36
                            if ((twig_get_attribute($this->env, $this->source, $context["props_n1"], "divider", [], "array", false, false, false, 36) == 2)) {
                                // line 37
                                echo "                            <li><hr class=\"dropdown-divider\"></li>
                        ";
                            }
                            // line 39
                            echo "                        ";
                        }
                        // line 40
                        echo "                    ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['id_n1'], $context['props_n1'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 41
                    echo "                    ";
                }
                // line 42
                echo "                </ul>              
            </li>
        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['id_n0'], $context['props_n0'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 45
            echo "        </ul>
      ";
        }
        // line 47
        echo "      
        <ul class=\"nav justify-content-end\">
        <li class=\"nav-item dropdown justify-content-end\">
          <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">
            ";
        // line 51
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["user"]) || array_key_exists("user", $context) ? $context["user"] : (function () { throw new RuntimeError('Variable "user" does not exist.', 51, $this->source); })()), "username", [], "any", false, false, false, 51), "html", null, true);
        echo "
          </a>
          <ul class=\"dropdown-menu dropdown-menu-end\">
            <li><a class=\"dropdown-item\" href=\"";
        // line 54
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("user_chpass");
        echo "\"> Cambio Passsword</a></li>
            <li><hr class=\"dropdown-divider\"></li>
            <li><a class=\"dropdown-item\" href=\"";
        // line 56
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getUrl("app_logout");
        echo "\"> Desconectarse</a></li>
          </ul>
        </li>
        </ul>

    </div>
  </div>
</nav>
";
        
        $__internal_5a27a8ba21ca79b61932376b2fa922d2->leave($__internal_5a27a8ba21ca79b61932376b2fa922d2_prof);

        
        $__internal_6f47bbe9983af81f1e7450e9a3e3768f->leave($__internal_6f47bbe9983af81f1e7450e9a3e3768f_prof);

    }

    public function getTemplateName()
    {
        return "menu/index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  181 => 56,  176 => 54,  170 => 51,  164 => 47,  160 => 45,  152 => 42,  149 => 41,  143 => 40,  140 => 39,  136 => 37,  134 => 36,  121 => 32,  117 => 31,  114 => 30,  111 => 29,  109 => 28,  104 => 27,  102 => 26,  99 => 25,  92 => 22,  89 => 21,  84 => 20,  82 => 19,  75 => 16,  69 => 15,  62 => 12,  58 => 11,  55 => 10,  53 => 9,  43 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<nav class=\"navbar navbar-expand-lg bg-dark\" data-bs-theme=\"dark\">
  <div class=\"container-fluid\">
    <a class=\"navbar-brand\" href=\"#\">MENU:</a>
    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">
      <span class=\"navbar-toggler-icon\"></span>
    </button>
    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">
        
      {% if items[0] is defined %}
        <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">
        {% for id_n0, props_n0 in items[0] %}
            <li class=\"nav-item dropdown\" id=\"menu_{{id_n0}}\">
                
                <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">
                    {% if props_n0['icon']!='' %}<span class=\"{{props_n0.icon}}\"></span>{% endif %}
                    {{ props_n0.nombre }}
                </a>
                <ul class=\"dropdown-menu\">
                    {% if items[props_n0['id']] is defined %}
                    {% for id_n1, props_n1 in items[props_n0['id']] %}
                        {% if props_n1['activo'] is defined  and props_n1['activo'] %}
                        {% if props_n1['divider'] == 1 %}  
                            <li><hr class=\"dropdown-divider\"></li>
                        {% endif%}
                        <li>
                            {% set link = \"#\" %}
                            {% if props_n1.link is defined and props_n1.link!= \"\" %}                                    
                              {% set link = props_n1.link %}
                            {% endif %}

                            <a href=\"{{ app.request.baseUrl ~ '/' ~ link }}\" class=\"dropdown-item\" >
                                {% if props_n1['icon']!='' %}<span class=\"{{props_n1.icon}}\"></span>{% endif %} {{props_n1.nombre}}
                            </a>

                        </li>
                        {% if props_n1['divider'] == 2 %}
                            <li><hr class=\"dropdown-divider\"></li>
                        {% endif%}
                        {% endif %}
                    {% endfor %}
                    {% endif %}
                </ul>              
            </li>
        {% endfor %}
        </ul>
      {% endif %}
      
        <ul class=\"nav justify-content-end\">
        <li class=\"nav-item dropdown justify-content-end\">
          <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">
            {{user.username}}
          </a>
          <ul class=\"dropdown-menu dropdown-menu-end\">
            <li><a class=\"dropdown-item\" href=\"{{url('user_chpass')}}\"> Cambio Passsword</a></li>
            <li><hr class=\"dropdown-divider\"></li>
            <li><a class=\"dropdown-item\" href=\"{{url('app_logout')}}\"> Desconectarse</a></li>
          </ul>
        </li>
        </ul>

    </div>
  </div>
</nav>
", "menu/index.html.twig", "/home/ntbdesa/www/reportesundav/apps/templates/menu/index.html.twig");
    }
}
