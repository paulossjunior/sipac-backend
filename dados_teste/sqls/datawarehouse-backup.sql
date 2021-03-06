PGDMP     8                     t           datawarehouse    9.3.5    9.4.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16658    datawarehouse    DATABASE     k   CREATE DATABASE datawarehouse WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE datawarehouse;
             pentaho    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5            �            3079    11756    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    173            �            1259    16661    dim_produto    TABLE     �   CREATE TABLE dim_produto (
    produtoid_sk bigint NOT NULL,
    version integer,
    date_from timestamp without time zone,
    date_to timestamp without time zone,
    id integer,
    nome character varying(100)
);
    DROP TABLE public.dim_produto;
       public         pentaho    false    5            �            1259    16659    dim_produto_produtoid_sk_seq    SEQUENCE     ~   CREATE SEQUENCE dim_produto_produtoid_sk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.dim_produto_produtoid_sk_seq;
       public       pentaho    false    5    171            �           0    0    dim_produto_produtoid_sk_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE dim_produto_produtoid_sk_seq OWNED BY dim_produto.produtoid_sk;
            public       pentaho    false    170            �            1259    16670    fato_producao    TABLE     U   CREATE TABLE fato_producao (
    preco double precision,
    produtoid_sk integer
);
 !   DROP TABLE public.fato_producao;
       public         pentaho    false    5            '           2604    16664    produtoid_sk    DEFAULT     v   ALTER TABLE ONLY dim_produto ALTER COLUMN produtoid_sk SET DEFAULT nextval('dim_produto_produtoid_sk_seq'::regclass);
 G   ALTER TABLE public.dim_produto ALTER COLUMN produtoid_sk DROP DEFAULT;
       public       pentaho    false    171    170    171            �          0    16661    dim_produto 
   TABLE DATA               S   COPY dim_produto (produtoid_sk, version, date_from, date_to, id, nome) FROM stdin;
    public       pentaho    false    171   �       �           0    0    dim_produto_produtoid_sk_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('dim_produto_produtoid_sk_seq', 271, true);
            public       pentaho    false    170            �          0    16670    fato_producao 
   TABLE DATA               5   COPY fato_producao (preco, produtoid_sk) FROM stdin;
    public       pentaho    false    172   �!       (           1259    16665    idx_dim_produto_lookup    INDEX     E   CREATE INDEX idx_dim_produto_lookup ON dim_produto USING btree (id);
 *   DROP INDEX public.idx_dim_produto_lookup;
       public         pentaho    false    171            )           1259    16666    idx_dim_produto_tk    INDEX     K   CREATE INDEX idx_dim_produto_tk ON dim_produto USING btree (produtoid_sk);
 &   DROP INDEX public.idx_dim_produto_tk;
       public         pentaho    false    171            �      x��\�r�H����HoX1��H��$Q��U ��� 	QÇ�c��^�c��j��6&b��(c�^k\���~ɞ��[U�{w��j��y�:���y�;3����?��^��3�%z���יe]��^�º��?�����Y_���P�j�{�ݎ��7.�c%���q��``�i�Jtn����\��1�7F��7 ^<L��Z6w�����w�O�d�5�T�J��{��G7Eg�������1`�\�@�V�0��Hf�uy�\/+�d��	�增�^|*�����n1_U��bi�lr: �X�z�s�S0�dsԑ;�8�&6[�u���M65P�Ob�"SA�A��������*ųa�t �Wx����� ��g.�P�*���b�Q)*8�b�Q6e_Ǽ� ��%P�M��\ǆŦG�$NS4���x��O]���{M�$��P�JQN�����c,����F���ۛ��aS�*�i<D��< N<<.{m�}�w��� ��`��*�'�.��(��񻃛����e�36.�Դ{��:��Z*.�$�{ �;ϟđ2.��{��:����r�/?�x\Z�=��q�sQ�\~�=�,�jS�@����%Oa\ؔ�4U�&8�q*�N4��O�`�9T��e�����MT(�PE��0����a��?ݻbQk~.��U��u5*��b�,�0.��bq�&�;�!!�l�B57 ~4�L�lC4�0�э`8���L���c4��P͡7���5.�L�@�w4ܸdSB���K6+�����D�*�3�P���y����-(�U�dS"	��(��j�j�jJ�xH�q���M�%��P�������̆��4��>cw�}6�!�_<9M6�!�C7��賹�6�\�ߑ�ʝ���م �m�4�6��8b��g��k�#O�BmЍ>�t �;X��8���.�]L��!�f�勞�.(�#Qz>�g�T{�O����<l6�!�[����f���9�:r6��oW]5��.Gt���i^��Œ>�����E�Y��)V�b�\�W%�.h��ڌA��U1Ţ�����[ϫY=:�B ����Z,��h�N�,� ��+>������S�(�Ŵ=�s��������E?છ�C7���f��  rm�'*�Z�ͮX�Wp��fW�B�y�D|x~�]9p�X���$��.��`��!��sI���y]���8jC����-��C�X�e�(P}�cZ/��$�`)\8aߐl��-�*�n���'6��j~ѳ�:�dS�o�Ĵ6 ��4lɦt�:��°Yܿ8�i>����q�x���^6s�����z�7�`�Ok�a�o���zQR�{?+�� 2��}j���g}��xrd��&v��ݶ&L���f��&y�H���V;=�}:l�� �yb�a�¯����n��a����c��8ljC�]Z^���ɀMi�����<a��44ڽ��T���|e��
� ����`���6�.*��}�/��ї�iAK�o����b��ˍ���\�G��N�p�ƃX����
�uc7�<T�G� 6e��n}_/�����
�uc�-�wt��u���s9���gt'<��Z
a�=6u���޽S�f,֍�*4��$�csZ����T��Z3{l*C{�8��0�MX�K27L��1�π�&/�֭�/e�T����PW7U����=6m!�n�����΂�=6���{��ЏMe(�ȋF_~&���^g3�4��A�hɱ^b4���Q/�U��L<:�Ƚ���-���m�7POn;_���к����#����� ������O��[5�BBaWz���[�Nڐho����x�i����\�"�_
�5��W������/;´!�^6�RWS{����d�sKR~�nѤ�������n�.�8=�s��҆�c&�7�!ٕ9�B�G��*x�{)d���P�w���s��8>�+�����!i;���ǾJ�~��ȉ��[#��*�6<�;v}�6l��
�GPY�S�3�27��B���+L�ŭ)��]-��#uOvJ*���Uѽ���z~_���E�R�1���֪�RmM��E���
OY�U��,E1���_�%>�׿|�?�-�b�p�2��I�d�E&a2��P�O�=�d�fc\�*}E�gh&��}�yZ�?[/ţ��fe�|_N��jZ��t'V�=�B/0��ܲ�p(��O���=�YAm~�\����>,�i�'�l>���vFk�c]	+�9����Jx���ie��e\���E):�����F�V��i{��C��pv����a\�,;ŕ0,�jA�Et�ӯ��� �� &e����,W�����wQF��V�r�7���l�T�s���lZ�K�)���f%<M.�f�����	�@+!���V���7����y$��\�d�V�F�N�h�lBcS�স[��w�Dٌ��)�4��Gh9]4��˂��J�M�|Gcٔ�ߨI<l>��G�|��P�/��ć��J��Ĕ��U	���fͯ�A�����䴟e�S��J�lq�2�?���XT�7(v8*���O��&O���Ԅ�MvL*�����4O;-����v!z�[�^"�ːH N|�oء��D���]���	0lC ��Pm��xJH��֏�kZ7`'�*���6Iv�)!�4��P6u!����e3I�����!��Nn0���'%dr��wA�@RB/C�E��ԄB�zz�ˇ�\JdG��I3��h7��&%�3T#~��(s&:'#�����W~�������8SBo�����jQ�;�Ӫ��8/6��NH%4��s6_o��UB�����z��,�� ����9������<{v��+�*������`G�^��D��ɬ����m39:AvM��S��dWs���m��V���C�	m��W٧r��a0:�O|z��ހ"��~��7[��u���Uf��7y.��]=6Um�1�A���v,��vP�`_lPt����Mvz+m���o~��_d׀M5�bwC�Pv�+mb}z8�q%HX�P�P��,֫Z���S[	/�3�d��"���V�|`�.Pv@+�9Br�$(^��c
tz46caBvhG;��bR����R,���n��(W�������D�%9ų��gQ����e��#�fO�7�hY��W�>�o]�ͦ8T?�aw}f��9}�]Ďw%�;��*I=�^Q����joP`��Ka
jϴ�,Z_�9��.%,��+R��%:/Ŕ��W��E5���C1{ҋ�;���4�����g��a]����C��K��(~':^��I�'_���s��H`�j�/ 0��Q�c�h�sc	ݏ�	��΅%4����{��;������a���Ŏ|%~�燴��b���@z���!k�u���WL�쒀��/-K��]={6]ߵ�����(���P�5��U�=��&��������!	�]p
�	���K��D�?y��h��a	˰۹��	Kx���,�>p2;ޕp��6�_�����}H���������7�f�Gz�g�.�im�fB��.��:P�=�f��bg�?�(�,0��T��y	��Ǌ��pW�Y��oO���`�4?�k�;u��	8�5k.+(x����b�R�=�x.�e����b��<ɓ\/�}�UM��Rj�
t_���ԁJ�]W�]���<�.��]1/W�`3�����;,u��-�f��bg�T9-��d�1��_�q���A/ǣSN�6���N�r�ưġ7ʃ�kA;Nu��'�{ưsU�������	A;���s��bǪ�5�ov�Y�HՁ�fq:�A���� �����*��:PS��~k��b��uRT��~�s
-���Ձ�N0=�7��!��3D���0z���2;ju ��pD3��^�-M��?���X�_h�?�.+6���'(��ٔ�4O@0:36�!ʓ�?�:;�u��-H�ϰ��$s�s�)z�ً G`��{B/Ǻ*��؁����n~�q?gb���y���'vV�@�'y4 �   �1�f'�$g�3���Ni(s�ҵ6vH�@��0'���j�t~�߇K��L_��Pk�"�+��b����������>S6���3��|�`��rӮ�b�dZo�8~�bG�[o����_�����a��rv      �   �  x��\Y�$)�����>Lb�K�0$��##����ǯ��6��W��
��;G�jW�����Q��rʽ�[�0	�����ƱX���a��`�Y_��xv�k���a���O�u�������v����v��|k�
m�σ98�K��*a�� ���E9���&>��2�
[1 ��x�k�e��Φ�6�n�{�@�\����ݻ��.߀5^�|�_�9�=O|�v=�ǿ4� C$�O��<��]M�B�ݏB����r�<�>J,����{�<��=�R?�8nq���	x�!싰�O��Mg���jV�������Y�W��#li��L5΀"x�jlB�.�>�C�n�uy����P��c�4E�Y=��/�}����F�#n��6�٠~Oc�t6봫��k�[�[sWe��)��F,*����<6F�`���p�}�v�>;�����o��h�����s3ku�L+�V(���9�{Ԋ�Ƹ�ȯ����EA��ր�-v����?ѿ���L�Oq��R_�q-$^�����E��@��j���cϢB!+����
�C�f`[�ˮ�d�]�V6�LT(���pk����#Ṗ��H����[PӰ��GC��Bd�~טaw��wN��B��cC,퉕Q�;�c�~�<jx _	-p��U1�臀98���RҔݯ��Ӟ�q\�KSO��^p�����ǁ�_<������%�xn0bu�GVH?�"�^
|�Q�W��$6���7 |�v�u�=<= �qFXiv�MK`��[8��~���􃐴&�H��C�l\�pwBMu&N�l��j������zM�&Ȗ��5"�{���.�T��RGޅ V��p�b�5ZL;h���������D̀�]:f_�#���"B/ t��������[G܄�B���V��6Ѯb�H�Y���7�����Չ��Hc��. 	O�P��;�D�T�,��#�G�o(e"ޱ;�zt���v�����7��O8����5�m��f�`z��l�~i��;h�goj+�'ֳ� ���3�7��p�(�iPu�z�,e�og h��J�"��ʹ�g+fns҉s-��RL�t#�}{���U4I�|װ���]����&A>�.�С�r���o�Yf�z�����h�q�kOp6������W��Fz������Y�9���/s0ޢ�/߃��$���,�n���3��)��Tt?dPm/O;n�qk�'k|{@�g�UH��q��/� ]���*�s�G��J@W�Vyz}��zn�b�ҝ�#k�u4��|  ���7a1�{x�A2qEa�V���`o��K�v5ha�u�M%iN�YM�ɳlYy�?�|A���,�YE�q�\ge���t�jYa��Ols�������(3�X9ݼ, 
I'Be�E`�
�i
{�)�9B !��� l��!����<��-zF&��צ�B^�&y�y�d
�
�������W|ب|�^з@Bb����c��z��?�K+��k����gS�aznn�y��O���M9`�Ȼ�c�߯�!���_�m>@�x˸L-��y��g� eu+��(�� �Grh�>�����3��A%!���K��#�qs��	G���(5�9��m���g�������f�����է3f�Q�m둌�2�-�d�g=?����t��F��n�g?o��x�v�0��t�b�z��8p�O�O�Q���`T���#�e�h�s������6��Ｎ��=.N�2h�_�&n�����k�t��u�%;�t����|��;��̵?�d|�p�u���4{�4��ϫK����l�~�9�%N	�������ɣ��	�ΐ��.�k�~'=Q�xu����d�<�E$~�Otz��`f�pA��O�����OD���A�a�Oh�a���n�$�N�L�O�|�E�sF�? �����qVbCߪGW���ڇ8��6���3o�A�f@��􏢀�ᫎ��eXz|���K6S��M� ��9���wI&�\�Y�Cj�~�K���o�N�0?�J�;㿚WZ��×�;إ��o��ښ_2PoL�ۑ���z��ۙ�z^뇷	;]^I�y�����Q�K�:FZd�FcU),����
͜�5lc�$ה�ETכ�3��=��!�+7X�N~]����;%�^�ߡ�>��?��α~� �-�A�KLY'��'|�g�/|ٗ�����?<�`�k��I˂i�)}v9y!���{��Qˍ
�7�,�b�爷ܳ�o�6VF.�Ƕ�r����������J��`+��7�p����?�۝y;�ߕtʹ�<^/m�'r�@T�(���L�e�{�7KR^y���Rv ç �W�p6X4N��8R/b���U����q��_FMյ��`<zg�*�q���B<�r;)*s>e!ɜ���(c����i�;��a8R�!�%(/�$�l�DSN�fկ�w�2~Nb+�H}&*�C5ƻ��O�w&��r�=��9GA:��>�}�	�\�f|�$f��*8�v��w�s��d;#3�����E��#ϗk[0��^��,�':g<��`Qb��A,К�/��0a��z�RW�43�Vƴ��ɋ_�����!�� �������0��LwK���Ŷ��Yڂ�qR��׬B��x�%�u9�#�3�j�@l��h��eOu�b��� ��e���ͮa0)tT\E��6�i�y��Y�������[�2�]H��'�^2���G��M������#�LR����g��������X:&��g��;g|�3�q����Zbv��*��0ְ0ˉ��x�9Qͭ񣔀t�]S��y͡>��O#ny�M���ΠG���S@v��@��ġ�Lě� ��1���
�?	�:q�މ'��m�]��h;���@��E���q�o��;��<�<xf-�"�Og<�D��i�_!�K�3!�ovw,��F���$˛�hǾ��ߒ��G?,�~����2��5�~N�a��KN�˜���[��Y���~�$� ���L��>l���q#����O"LV��q�����%����9�;^��\_E�*���m�+�i#p���o��ڿULf������5�YWp<n^u�t��#�K0.R/ |�{���[p����ᗂi��u�8����4�To\���:�ǫr�s8U� 4}Åc]��u�Q�s�'�^�\�
E�,e
���$�)HS
+�AP��*�^����&��U=$w��*PJ<�6�K��D���5	�|�](ǵ���45
f-�^��E�W4L��	�k/v�b{��[��.�Y�������5����05OY�TI}�<�,�U������R�����$l=÷8)lǭP�\�l��m\�#���'4+7���v8Tq�xg��҈YG��s�P���`!��O�q��%�� �o6O�{H���mЧ$db����� R�R(�����!%���nm-Yy,5�ѳ;$xl������Eן袔����+�u2���T��Ӥ����%�p._q�"�q���xӶzA����8M��������8gL�����9ﭘş���8��e12�_� ���.W���[ g��N�},oi�)�V�2Ǎ���v�2���O-o�|����-o�2�[��Ew����1�=�Aܡ&&;����冶F&�Z���kӛZ�m�0�'_��U��m�ߥX%L)��>�<U���|j�t�u�2�'�Y��E=e�������]�bJW��ے�F�����oo�<��-:�f�ef603;.�Ls��I�D#�:^�^J���"�9#�UD6,X�Y0dF�"Ö|0��-�C��j�o�����Sq��ۻ�V=��W�ա»C=d����ު�r8���~j��]'�ϴ�s�w�V��s���t��6�:������ �R �     