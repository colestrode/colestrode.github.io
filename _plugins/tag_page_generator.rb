module Jekyll
  class TagPageGenerator < Generator
    safe true

    def generate(site)
      tags = site.posts.docs.flat_map { |post| post.data['tags'] || [] }.uniq
      tags.each do |tag|
        site.collections['tag_pages'].docs << Jekyll::Document.new(
          File.join(site.source, '_tag_pages', "#{tag}.md"),
          site: site,
          collection: site.collections['tag_pages']
        ).tap do |doc|
          doc.content = generate_tag_content(tag)
          doc.data.merge!({
            'tag' => tag,
            'title' => "Posts tagged \"#{tag}\"",
            'image' => '/assets/images/cover.jpg',
            'image2' => '/assets/images/cover-mobile.jpg'
          })
        end
      end
    end

    private

    def generate_tag_content(tag)
      <<~CONTENT
        {% assign posts = site.tags['#{tag}'] | sort: 'date' | reverse %}
        <div class="post-list">
          {% for post in posts %}
            <article class="post-item">
              <h2 class="post-title">
                <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
              </h2>
              <div class="post-meta">
                <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time>
              </div>
              <section class="post-excerpt">
                {{ post.excerpt | strip_html | truncatewords: 50 }}
              </section>
            </article>
          {% endfor %}
        </div>

        <style>
          .post-item {
            margin-bottom: 40px;
            padding-bottom: 20px;
            border-bottom: 1px solid #eee;
          }
          .post-title {
            margin-bottom: 10px;
          }
          .post-meta {
            color: #666;
            margin-bottom: 15px;
          }
          .post-excerpt {
            color: #333;
          }
        </style>
      CONTENT
    end
  end
end