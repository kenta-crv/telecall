module ApplicationHelper
  def default_meta_tags
    {
      site: "テレアポ代行を業界最高峰のリストで行うなら成功報酬の『アポ匠』",
      title:"<%= yield(:title) | 株式会社Ri-Plus' %>",
      description: "テレアポ代行でITを活用した分析型アポ代行・テレマーケティング代行なら『アポ匠』！ITプログラミング技術と徹底したマーケティングスキルでテレアポ成功事例を多数保有しております。",
      keywords: "アポ代行,テレアポ 代行,成功報酬",
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
