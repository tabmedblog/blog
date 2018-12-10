module Jekyll
  class TableauViz < Liquid::Tag

	@@DEFAULTS = {
		:id => 1,
		:width => '300px',
		:height => '200px'
     }

  	def initialize( tag_name, markup, tokens )
      super

        @config = {}
        # set defaults
        override_config(@@DEFAULTS)

        params = markup.split

        # first argument (required) is url of swf
        @url = params.shift.strip

        if params.size > 0
          # override configuration with parameters defined within {% swfobject pathToSWF %}
          config = {} # reset local config
          params.each do |param|
            param = param.gsub /\s+/, '' # remove whitespaces
            key, value = param.split(':',2) # split first occurrence of ':' only
            config[key.to_sym] = value
          end
          override_config(config)
        end

    end

	def override_config(config)
		config.each{ |key,value| @config[key] = value }
	end

    def render( context )
"""
<script src='https://public.tableau.com/javascripts/api/tableau-2.min.js'></script>
<div class='tableauPlaceholder' id='#{@config[:id]}' style='position: relative'>
</div>
<script type='text/javascript'>
	var placeholderDiv = document.getElementById('#{@config[:id]}');
	var url = '#{@url}';
	var options = {
	   hideTabs: true,
	   width: '#{@config[:width]}',
	   height: '#{@config[:height]}',
	   onFirstInteractive: function() {
	     // The viz is now ready and can be safely used.
	   }
	};
	var viz = new tableau.Viz(placeholderDiv, url, options);
</script>
"""
    end
  end
end

Liquid::Template.register_tag('tableauviz', Jekyll::TableauViz)