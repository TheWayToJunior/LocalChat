   M S B A M L   `   `   `  ����J  FWpfApplication1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication1WpfApplication1  5   	        WpfApplication1.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WpfApplication1     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��480��5      $	��854��6'     � 
ResizeMode$  NoResize=�63    � WindowStartupLocation$ CenterScreen=�6I   
������� � WindowStyle$
 None=�6�    � 	Resources 5	         MenuOpen �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	MenuClose��%�  &	        &	 �     �� 5
   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 60Q�63     5      $ 0:0:0.5��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.5��6'   $ 60Q�69   5      5      5       � Triggers 5      :� 5   
   	 :� RoutedEvent$	 ButtonBase.Click��6   
 :� 
SourceName$
 ButtonOpenMenu��66   .[�5      �� #��[  6   5      :� 5   
   $	 ButtonBase.Click��6   $
 ButtonCloseMenu��66   .[�5      �� #��[ 6   5      .��5!      � ���	#FFDED9D9.+�5"   
    � -   5          �Name$
 main��5"      $��	60,60,0,0q�6     � NavigationUIVisibility$ Hidden=�61   � 5#   
   -   5        $��60��5#      $	��Top=�6   ���	#FF1368BE J� Effect 5$      3  -System.Windows.Media.Effects.DropShadowEffect  5%         Color$ Black��6#      	Direction$	 310Q�61      ShadowDepth$ 8Q�6A      Opacity$	 0.2Q�6Q   .+�5'      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.1.1101, Culture=neutral, PublicKeyToken=null]]   Kind$ AccountMultiple=�6&   $��20��6=   $��20��6H   $��70, 0, 0, 0q�6T   $��Center=�6i   �� 5(      -   5         ��Name$ tbUsersCount��5(      $��0��6.   $��Center=�67   $
��Left=�6R   $��98, 0, 0, 0q�6m   $��12(�6�   �� 5)      $��	Messenger��6   $��Center=�6)   $��Center=�6F   $��22(�6b   �� 5*      $��Center=�6    �� Orientation$ 
Horizontal=�64   $��Right=�6M   .+�5+      �� -   5        $ 
tbUserName��5+      $��My name��60   $��Center=�6?   $��14(�6Z     5,      $ AccountCircle=�6*   $��40��6?   $��40��6J   $��10q�6V   $��Center=�6b   '  !MaterialDesignThemes.Wpf.PopupBox  5-      $��10q�6*      PlacementMode$ BottomAndAlignRightEdges=�66      	StaysOpen .     PopupContent. 5.      �� .+�5/      �� $��Account��6!   �� 50      $��Settings��6!   �� 51      $
��Help��6!   �� 52      �� 53      -   5         ��Name$ ButtonLogout��53   !   $��Logout��67   6H   54      55      56      57      � 58   
   -   5         �Name$ GridMenu��58      $��60��6!   $
��Left=�6,   ���	#FF1E3C68 59        5:      $ Black��6#   $	 310Q�61   $ 8Q�6A   $	 0.2Q�6Q   .+�5<      �� .+�5=      � $	��120��6   
�������.+�5>      �� -   5        $ ButtonCloseMenu��5>      $��60��66   $��60��6A   $��Right=�6z   $	��Top=�6�   $y�	Collapsed=�6�   ��6M   Z� ��6c   Z� .��5?        ���	#FF1E3C68$ 	ArrowLeft=�6I   $��25��6Z   $��25��6e   5@      �� 5A      -   5        $ ButtonOpenMenu��5A      $��60��65   $��60��6@   $��Right=�6y   $	��Top=�6�   ��6L   Z� ��6b   Z� .��5B        ���	#FF1E3C68$
 Menu=�6I   $��25��6U   $��25��6`   $��0 0 0 0q�6l   5C      5D      �� 5E      -	   5         ��Name$ 
MyListView��5E      $��Disabled=�6/   ���	#FF1368BE.@�5F      �� $��60��6#   .��5G      �� $ 
Horizontal=�6%   .+�5H        $ ViewDashboard=�66   $��25��6K   $��25��6V   $��10q�6b   $��Center=�6n   �� 5I      $
��Home��6(   $��Center=�64   $��Center=�6O   $��20 10q�6l   5J      5K      �� 5L      $��60��6#   .��5M      �� $ 
Horizontal=�6%   .+�5N        $ Pencil=�66   $��25��6D   $��25��6O   $��10q�6[   $��Center=�6g   �� 5O      $��Create��6(   $��Center=�66   $��Center=�6Q   $��20 10q�6n   5P      5Q      �� 5R      $��60��6#   .��5S      �� $ 
Horizontal=�6%   .+�5T        $ Ticket=�66   $��25��6D   $��25��6O   $��10q�6[   $��Center=�6g   �� 5U      $��Tickets��6(   $��Center=�67   $��Center=�6R   $��20 10q�6o   5V      5W      �� 5X      $��60��6#   .��5Y      �� $ 
Horizontal=�6%   .+�5Z        $ Message=�66   $��25��6E   $��25��6P   $��10q�6\   $��Center=�6h   �� 5[      $��Message��6(   $��Center=�67   $��Center=�6R   $��20 10q�6o   5\      5]      �� 5^      $��60��6#   .��5_      �� $ 
Horizontal=�6%   .+�5`        $ 	GithubBox=�66   $��25��6G   $��25��6R   $��10q�6^   $��Center=�6j   �� 5a      $��GitHub��6(   $��Center=�66   $��Center=�6Q   $��20 10q�6n   5b      5c      5d      5e      5f      5g      5h      