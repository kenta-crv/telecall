module ApplicationHelper

  def default_meta_tags
    {
    	title:"<%= yield(:title) | 株式会社Ri-Plus' %>",
    	description: "	ITを活用した分析型アポ代行・テレマーケティング代行なら『アポ匠』！ITプログラミング技術と徹底したマーケティングスキルでテレアポ成功事例を多数保有しております。",
    	keywords: "アポ代行,テレアポ 代行",
      canonical: request.original_url,  # 優先されるurl
      charset: "UTF-8"
    }
  end

end
