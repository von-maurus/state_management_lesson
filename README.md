# State Management Lesson app

## Overview

This is a simple app with multiple branches dedicated to a specific design pattern based on a state management style with the respective Flutter library.

*Key knowledges: 
- Singleton its a pattern similar to Provider, but with a Stream widget builder approach, that is based on a more "manual" way 
to update the state of a widget. 
- Provider simplify the Singleton Pattern and use a unify class that inherits from a ChangeNotifier and gives you the posibility to scale 
the logics of providers in a more clean way, works best for a team managing multiple modules. 
- Cubits its similar to a provider because you can use it across the widget tree of an app lifecycle. But its also similar to BLoC pattern.
- And finally the BLoC patter that its very similar when using Cubits but scales better for a bigger system. 


