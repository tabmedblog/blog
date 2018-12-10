    <!-- HEADER -->
    <div id="header_wrap" class="outer">
        <header class="inner">
          <a href="{{ site.url }}{{ site.baseurl }}/""><h1 id="project_title">{{ site.title | default: site.github.repository_name }}</h1></a>
          <h2 id="project_tagline">{{ site.description | default: site.github.project_tagline }}</h2>

          {% if site.show_downloads %}
            <section id="downloads">
              <a class="zip_download_link" href="{{ site.github.zip_url }}">Download this project as a .zip file</a>
              <a class="tar_download_link" href="{{ site.github.tar_url }}">Download this project as a tar.gz file</a>
            </section>
          {% endif %}
        </header>
    </div>