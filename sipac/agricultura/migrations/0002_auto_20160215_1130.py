# -*- coding: utf-8 -*-
# Generated by Django 1.9.1 on 2016-02-15 11:30
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('agricultura', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Familia',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=40)),
            ],
            options={
                'ordering': ['nome'],
            },
        ),
        migrations.CreateModel(
            name='Fonte',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.IntegerField()),
                ('nome', models.CharField(max_length=20)),
            ],
            options={
                'ordering': ['codigo'],
            },
        ),
        migrations.AlterField(
            model_name='producao',
            name='area_colhida',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='producao',
            name='area_em_formacao',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='producao',
            name='area_em_producao',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='producao',
            name='area_plantada',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='producao',
            name='irrigado',
            field=models.CharField(max_length=2),
        ),
        migrations.AddField(
            model_name='producao',
            name='fonte',
            field=models.ManyToManyField(to='agricultura.Fonte'),
        ),
    ]
