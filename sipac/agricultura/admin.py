from django.contrib import admin
from .models import *
from core.models import *

class ProdutoAdmin(admin.ModelAdmin):

    list_display = ('nome', 'codigo')
    list_filter = ['nome','codigo']
    search_fields = ['nome']


class ProducaoAdmin(admin.ModelAdmin):

    list_display = ('data_display','produto_nome_display',
                    'municipio_nome_display')

    def produto_nome_display(self, obj):

       produto = Produto.objects.get(pk=obj.produto_id)

       return produto.nome


    def data_display(self, obj):

       data = Data.objects.get(pk=obj.data_id)

       return data

    data_display.short_description = 'Data'

    def municipio_nome_display(self, obj):

       municipio = Municipio.objects.get(pk=obj.municipio_id)

       return municipio.nome

    municipio_nome_display.short_description = 'Municipio'
admin.site.register(Produto,ProdutoAdmin)
admin.site.register(Producao,ProducaoAdmin)

