   M S B A M L   `   `   `  ����L  HComputoServer_wpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:ComputoServer_wpfComputoServer_wpf  5   	   "    ComputoServer_wpf.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   +localclr-namespace:ComputoServer_wpf  5   	   -   5          � Title$  Servidor Centro Computo��5	   	   $	��800��6)   $
��1250��66   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5
   	      TextRenderingMode$
 Auto=�5   	    � 
ResizeMode$ 	CanResize=�6.    � WindowStartupLocation$ CenterScreen=�6E    � WindowState$ Normal=�6j    � 	Resources 5       �� MergedDictionaries �� Source	 �� 
TargetType   MaterialDesignComboBox
 �� BasedOn �� Property �� Value  SharedContextMenu m� Icon'  !MaterialDesignThemes.Wpf.PackIcon�  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]]   Kind�� 5   
    5      �� 5      $f `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Button.xaml?�6%   �� 5      $d ^pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Card.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.CheckBox.xaml?�6%   �� 5      $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Flipper.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Popupbox.xaml?�6%   �� 5      $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.TextBox.xaml?�6%   %�  '��       7   &	 {   �� 5      "	 ��6   8
   .�5      ��  � ��$ Stretch=�68   �� 5       � ��$ 0 8 0 8q�6+   5      �� 5      .@�5      m� -   5        $��Bloquear��5       5        5       $
 Lock=�62   $��16��6>   $��16��6J   5"      �� 5#      m� 5$      -   5        $��Desbloquear��5$       5%        5&      $ 
DesktopMac=�62   $��16��6D   $��16��6P   5(      5)      5*      .��5,      � ��5-   
   �� 5.       �� ImageSource$6 0http://geodesia.uas.edu.mx/images/cabecera22.png��6    j� TileMode$
 Tile=�6X    j� Stretch$ UniformToFill=�6h   .+�50   
   (  "MaterialDesignThemes.Wpf.ColorZone  $��20q�6#   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�60      Mode$
 Dark=�51   -   $	��Top=�69   ���#530630.��52      ]� .+�53        $
��Left=�6*   $ 
DesktopMac=�6@   $��24��6R   $��24��6^   �� 54      $��Center=�6   $��Center=�69   $��18(�6T   42Sistema de Control de Acceso al Centro de Cómputo6�   55      56      �� 57   
   -   5         ��Name$ btm_actualizar��57       & "MaterialDesignFloatingActionButton#��[ 6)   $��0,5,10,0q�58      $��Right=�6+   $	��Top=�6G    � ToolTip$ 
Actualizar��59      $��48��6.   $��48��6:   
����������	#FFD1D1D1.��5:        $
 Sync=�6&   $��24��62   $��24��6>   
�������6I   5<      �� 5=   
   -   5        $ btn_usuarios��5=      #��[ 6'   $��0,5,80,0q�5>      $��Right=�6+   $	��Top=�6G   $! Administración de usuarios��5?      $��48��6>   $��48��6J   
����������	#FFD1D1D1.��5@        $ AccountCardDetails=�6&   $��24��6@   $��24��6L   
��� � �6W   5B      ]� 5E   
   5G      �� 5H   
   $��50,100,50,50q�6   $��Disabled=�6-   .��5I      � -   5         �Name$ GridPCS��5I      .+�5J      �� -   5         ��Name$ CC_01��5J      $
��Left=�6'   $	��105��6B   $	��Top=�6O   $	��126��6g   $��Resources/img/pc_off.png��6s    � Cursor$
 Hand��6�    � ContextMenu# �  6�   6�   �� 5K      -   5        $ CC_02��5K      $
��Left=�6'   $	��105��6B   $��	134,0,0,0q�6O   $	��Top=�6b   $	��126��6z   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5L      -	   5        $ CC_03��5L      $
��Left=�6'   $	��105��6B   $��	267,0,0,0q�6O   $	��Top=�6b   $	��126��6z   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5M      -
   5        $ CC_04��5M      $
��Left=�6'   $	��105��6B   $��	402,0,0,0q�6O   $	��Top=�6b   $	��126��6z   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5N      -   5        $ CC_05��5N      $
��Left=�6'   $	��105��6B   $��	628,0,0,0q�6O   $	��Top=�6b   $	��126��6z   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5O      -   5        $ CC_06��5O      $
��Left=�6'   $	��105��6B   $��	762,0,0,0q�6O   $	��Top=�6b   $	��126��6z   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5P      -   5        $ CC_07��5P      $
��Left=�6'   $	��105��6B   $��	895,0,0,0q�6O   $	��Top=�6b   $	��126��6z   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5Q      -   5        $ CC_08��5Q      $
��Left=�6'   $	��105��6B   $��1029,0,-17,0q�6O   $	��Top=�6e   $	��126��6}   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5R      -   5        $ CC_09��5R      $
��Left=�6'   $	��105��6B   $��	0,162,0,0q�6O   $	��Top=�6b   $	��126��6z   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5S      -   5        $ CC_10��5S      $
��Left=�6'   $	��105��6B   $��134,162,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5T      -   5        $ CC_11��5T      $
��Left=�6'   $	��105��6B   $��267,162,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5U      -   5        $ CC_12��5U      $
��Left=�6'   $	��105��6B   $��402,162,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5V      -   5        $ CC_13��5V      $
��Left=�6'   $	��105��6B   $��628,162,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5W      -   5        $ CC_14��5W      $
��Left=�6'   $	��105��6B   $��762,162,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5X      -   5        $ CC_15��5X      $
��Left=�6'   $	��105��6B   $��895,162,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5Y      -   5        $ CC_16��5Y      $
��Left=�6'   $	��105��6B   $��1029,162,-17,0q�6O   $	��Top=�6g   $	��126��6   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5Z      -   5        $ CC_17��5Z      $
��Left=�6'   $	��105��6B   $��	0,322,0,0q�6O   $	��Top=�6b   $	��126��6z   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5[      -   5        $ CC_18��5[      $
��Left=�6'   $	��105��6B   $��134,322,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5\      -   5        $ CC_19��5\      $
��Left=�6'   $	��105��6B   $��267,322,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5]      -   5        $ CC_20��5]      $
��Left=�6'   $	��105��6B   $��402,322,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5^      -   5        $ CC_21��5^      $
��Left=�6'   $	��105��6B   $��628,322,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5_      -   5        $ CC_22��5_      $
��Left=�6'   $	��105��6B   $��762,322,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5`      -   5        $ CC_23��5`      $
��Left=�6'   $	��105��6B   $��895,322,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5a      -   5        $ CC_24��5a      $
��Left=�6'   $	��105��6B   $��1029,322,-17,0q�6O   $	��Top=�6g   $	��126��6   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5b      -   5        $ CC_25��5b      $
��Left=�6'   $	��105��6B   $��	0,482,0,0q�6O   $	��Top=�6b   $	��126��6z   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5c      -    5        $ CC_26��5c      $
��Left=�6'   $	��105��6B   $��134,482,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5d      -!   5        $ CC_27��5d      $
��Left=�6'   $	��105��6B   $��267,482,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5e      -"   5        $ CC_28��5e      $
��Left=�6'   $	��105��6B   $��402,482,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5f      -#   5        $ CC_29��5f      $
��Left=�6'   $	��105��6B   $��628,482,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5g      -$   5        $ CC_30��5g      $
��Left=�6'   $	��105��6B   $��762,482,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5h      -%   5        $ CC_31��5h      $
��Left=�6'   $	��105��6B   $��895,482,0,0q�6O   $	��Top=�6d   $	��126��6|   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   �� 5i      -&   5        $ CC_32��5i      $
��Left=�6'   $	��105��6B   $��1029,482,-17,0q�6O   $	��Top=�6g   $	��126��6   $��Resources/img/pc_off.png��6�   $
 Hand��6�   # �  6�   5j      5k      5o      5q      