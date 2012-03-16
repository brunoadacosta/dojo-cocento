get "/contatos" do 
  @contatos = Contato.all
  @form = Form.new(Contato.new, :contato)
  
  erb :"contatos/index"
end

post "/contatos" do 
  @contato = Contato.new params[:contato]
  if @contato.save
    session[:notice] = "Contato salvo com sucesso."
    redirect to("/contatos")
  end
end

get "/contatos/:id" do 
  @contato = Contato.find(params[:id])
  halt 404 unless @contato
  
  erb :"contatos/show"
end