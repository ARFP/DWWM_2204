<?php 
/* 
fichier pour activer certaines fonctionnalités pour le thème 
(beaucoup de fonctionnalités sont désactivées par défaut)
permet également de personnaliser le fonctionnement global de wordpress
lorsque ce thème est actif
*/
 add_theme_support('widgets');



 register_sidebar([
    'id' => 'main-sidebar',
    'name' => 'Main Sidebar'
 ]);
