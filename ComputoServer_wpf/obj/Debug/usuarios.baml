   M S B A M L   `   `   `  ����L  HComputoServer_wpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:ComputoServer_wpfComputoServer_wpf  5   	        ComputoServer_wpf.usuarios   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:ComputoServer_wpf     5   	   U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$!  Administración de usuarios��5	   	   $��820                  ��6,   $
��1280��5       � 	Resources 5       �� MergedDictionaries �� Source �� 
TargetType   MaterialDesignComboBox �� BasedOn �� Property �� Value�� 5   
    5      �� 5      $f `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Button.xaml?�6%   �� 5      $d ^pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Card.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.CheckBox.xaml?�6%   �� 5      $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Flipper.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Popupbox.xaml?�6%   �� 5      $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.TextBox.xaml?�6%   %�   '��       7   �� 5      " ��6   8   .�5      ��  � ��$ Stretch=�68   �� 5       � ��$ 0 8 0 8q�6+   5      5      .��5      � .+�5    
   (  "MaterialDesignThemes.Wpf.ColorZone  $��20q�6#   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�60   	   Mode$
	 Dark=�5!   -   $	��Top=�69   ���#530630.��5"      ]� .+�5#      '  !MaterialDesignThemes.Wpf.PackIcon  $
��Left=�6*   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]]
   Kind$
 AccountCardDetails=�6@   $��24��6Z   $��24��6f   �� 5$      $��Center=�6   $��Center=�69   $��18(�6T   Administración de Usuarios6~   5%      5&      �� 5(   
   -   5         ��Name$ 
txt_buscar��5(      $
��Left=�6&   $��25��6A    �� TextWrapping$
 Wrap=�6M   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Buscar��6a   
�������$	��Top=�6�   $	��350��6�   $��	80,18,0,0q�6�   $��14(�6�   ���	#89FFFFFF6�   �� 5)   
   -   5         ��Name$ btm_actualizar��5)       & "MaterialDesignFloatingActionButton#��[ 6)   $��0,5,10,0q�5*      $��Right=�6+   $	��Top=�6G    � ToolTip$ 
Actualizar��5+      $��48��6.   $��48��6:   
����������	#FFD1D1D1.��5,        $

 Sync=�6&   $��24��62   $��24��6>   
�������6I   5.      �� 5/   
   -   5        $ btn_usuarios��5/      #��[ 6'   $��0,5,80,0q�50      $��Right=�6+   $	��Top=�6G   $! Administración de usuarios��51      $��48��6>   $��48��6J   
����������	#FFD1D1D1.��52        $
 AccountPlus=�6&   $��30��69   $��30��6E   
�������6P   54      #  MaterialDesignThemes.Wpf.Card  55   
   $	��Top=�6   $	��735��66   $	��970��6C   $��5,43,0,0q�6O   $��10q�6a   $
��Left=�6n   .��56      � .+�57      ��    MaterialDesignTitleTextBlock#���  6   $
��Left=�6S   $	��Top=�6n   Usuarios Registrados6�   &   System.Windows.Controls.DataGrid  59      -   5          Name$ dg_usuarios��59         
IsReadOnly . $��0,0,0,0q�6B      AutoGenerateColumns .     CanUserSortColumns .  $��Arial)�6�   $��13(�6�      EnableRowVirtualization .  ���	#89C1C1C1 � ContextMenu 5;      �� 5<      .@�5=      m� $��Editar��6'   
��� � � m� Icon 5>   "     5?   &   $
 Pencil=�6>   $��16��6L   $��16��6X   
��� � �6c   5A      �� 5B      m� 5C      $��Eliminar��6(   
���  �� 5D   "     5E   &   $
 Delete=�6>   $��16��6L   $��16��6X   
���  ��6c   5G      5H         Columns 5L      0  *System.Windows.Controls.DataGridTextColumn  5M      ,	  &System.Windows.Controls.DataGridColumn 	  Header$ USUARIO��6-    	  
IsReadOnly .  	  Width5
  /System.Windows.Controls.DataGridLengthConverter$	 100
 6l   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� *	usuario+6l     5N      $ CONTRASEÑA��6-    . $	 120
 6l    6A   �� *pass+6l     5O      $
 TIPO��6-    . $	 100
 6n    6;   �� *tipo_usuario+6n     5P      $ ESTADO��6-    . $	 100
 6j    6=   �� *estado+6j     5Q      $ CASTIGOS��6-    . $	 100
 6n    6?   �� *
castigos+6n     5R      $ FECHA��6-    . $	 120
 6h    6<   �� *fecha+5S      4  .System.Windows.Controls.DataGridTemplateColumn  5T      $ Acciones��61   $	 100
 6C      CellTemplate 5U      �� 5V   "   .R�5W   &   � .+�5Y   *   �� $ btn_eliminar��6�   -   5        #��[ 5Y   1   $��20��6m   $��20��6y   
���  ����6�   Z� ��6�   ��  �� Path$ usuario�.��5Z   .     $
 Delete=�6F   $��16��6T   $��16��6`   5[   +   �� 5\   *   $ btn_actualizar��6�   #��[ 61   $��20��6m   $��20��6y   $��10 0 0 0q�6�   ��6�   Z� ��6�   �� $ usuario�.��5]   .     $
 Pencil=�6F   $��16��6T   $��16��6`   5^   +   5_   '   5`   #   5b      5d      5e      5g        5j   
   $	��Top=�6   $	��735��66   $	��250��6C   $��	0,43,10,0q�6O   $��10q�6b   $��Right=�6o   .��5k      �� .+�5l      �� #���  6   Nuevo Usuario6b   �� 5m      -   5        $ txt_usuario��5m      $ USUARIO��6/   $��Center=�6X   $��30��6u   $��0q�6�   $
 Wrap=�6�   $�� ��6�   $	��205��6�   $	��Top=�6�   G� 5n      -   5         G�Name$ txt_pass��5n      $ CONTRASEÑA��60   $��Center=�6\   $��30��6y   $��0,20,0,0q�6�   $	��205��6�   $	��Top=�6�   �� 5o      -   5         ��Name$ cmb_tipo��5o      
�������  � Cursor$
  Hand��6@   $ TIPO DE USUARIO��6O   $��30��6�   $��0,20,0,0q�6�   $	��Top=�6�   $	��205��6�   .@�5p      �� $��
Estudiante��6#   
! � Tag$! 1��68   �� 5q      $��Administrador��6#   $! 2��6;   �� 5r      $��Inactivo��6#   $! 3��66   5s      �� 5t      -	   5        $ 
cmb_Estado��5t      
�������$
  Hand��6B   $ ESTADO��6Q   $��30��6y   $��0,20,0,0q�6�   $	��Top=�6�   $	��205��6�   .@�5u      �� $��Activo��6#   $! 1��64   �� 5v      $��Inactivo��6#   $! 2��66   5w      �� 5x      -
   5        $ btn_guardar��5x      $��GUARDAR��6.   $	��205��6@   $��0,35,0,0q�6M   
��� � �$	��Top=�6r   6�   �� 5y      -   5        $ btn_cancelar��5y      $��CANCELAR��6/   $	��205��6B   $	��Top=�6N   $��0,10,0,0q�6g   
���  ��6y   5z      5|      5�      5�      