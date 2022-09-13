   {% macro inspection_layer() %}
    {{log ('validating object:' ~ this.identifier, info=true)}}

  {% if 'staging' in model.path %}
  {log (model.path)}
        {%if not model.name.startswith ('stg_') %}
            {{exceptions.raise_compiler_error ( 'invalid naming convention. staging object must start with "stg_":'~model.path) }}
        {%endif%}   
    {%endif%}
{% endmacro %}