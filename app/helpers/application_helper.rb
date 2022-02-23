module ApplicationHelper
  def default_meta_tags
    {
      site: "完全成果報酬で事業復活支援金を申請なら助成金サポート.jp",
      title:"<%= yield(:title) | 助成金サポート.jp' %>",
      description: "完全成果報酬で事業復活支援金を申請なら助成金サポート.jp。30社限定で初期費用無料キャンペーン実施中！",
      canonical: request.original_url,  # 優先されるurl
      charset: "UTF-8",
      reverse: true,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('favicon.ico'),  rel: 'apple-touch-icon' },
      ],
	    canonical: request.original_url  # 優先されるurl

    }
  end

end
