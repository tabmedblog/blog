module Jekyll
  class LowerNoSpace < Liquid::Tag

  	def initialize( tag_name, markup, tokens )
      @markup = markup
    end

    # this is a tricky one
    # the context contains the variable
    # markup contains the name of the variable
    # therefore context[ @markup ] is the value of the variable

    def render( context )
      context[ @markup ].sub( ' ', '' ).downcase
    end
  end
end

Liquid::Template.register_tag('lowernospace', Jekyll::LowerNoSpace)