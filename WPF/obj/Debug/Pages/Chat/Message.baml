   M S B A M L   `   `   `  ����J  FWpfApplication1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication1WpfApplication1  5          WpfApplication1.Message   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:WpfApplication1     5      V RMaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5          N� Title$  Message��5
      .��5      � .+�5   
   � $	��350��6   $	��Top=�5      .+�5      �� -   5         ��Name$ Scroll��5      .��5      �� -   5         ��Name$ msgPanel��5      $��30 20 20 20q�6/   5      5      � 5   
   $��67��6   $��Bottom=�5      
������� J� Effect 5       3  -System.Windows.Media.Effects.DropShadowEffect  5!         Color$ Black��6#      	Direction$	 310Q�61      ShadowDepth$ 8Q�6A      Opacity$	 0.2Q�6Q    � ColumnDefinitions 5$      �� 5%      $
��Auto �6#   �� 5&      $��* �6#   �� 5'      $
��Auto �6#   .+�5*      �� $��60��6   $��50��5+      $��Right=�5.      $	��Top=�5/      ��5,      Z� ��5-      Z� .��50      '  !MaterialDesignThemes.Wpf.PackIcon  ���	#FF1E3C68�  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=null]]	   Kind$	 	paperclip=�52      $��25��53      $��25��54      55      �� 57      -   5        
 ��Name$
 TextBoxSemdMessage��57      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Enter your message��58      $��1��59      
 � Tag$ Write text...��5:      $��16(�5;      $��
0,-12,0,17q�5<      �� 5>      $��2��6    �� Orientation$ 
Horizontal=�5?      $��0 0 15 0q�5@      .+�5A      �� $��60��6   $��50��5B      $��Right=�5E      $	��Top=�5F      ��5C      Z� ��5D      Z� .��5G        ���	#FF1E3C68$	 StickerEmoji=�5I      $��25��5J      $��25��5K      5L      �� 5M      -   5         ��Name$ 
SendButton��5M      $
��Send��6-   $��
0,10,10,10q�6<   $	��105��6P   $
��Auto��6\   5N      5P      5R      5S      