
# Technicalisto

## This is a simple code by [ Swift UI ] for How to make verification code screen with write one value only in field & move to next field smoothly


Firstly note this code of Swift UI provided in @available(iOS 15.0, *)

About how to use it follow this steps :

1️⃣ install framework 

```
pod 'Introspect'
```

2️⃣ import Introspect in your viewController

3️⃣ Add the variables you want depend on your logic like 

```
@State var number1: String = ""
```

4️⃣ Add enum on it all your variable 

```
enum Field {
case number1
}
```

5️⃣ Add var @FocusState of Type of your enum field like 

```
@FocusState private var focusedField: Field?
```

6️⃣ Define each TextField design and on each it add

```
                .focused($focusedField, equals: . number1)
                .onChange(of: number1) { newValue in
                    if newValue.count == 1 {
                    focusedField = . number2
                    }
                }
                
```

every Textfield refer to the next field & count for detect user write one number only in one filed.
    
### Thanks

This app is inspired by Aya Baghdadi”
and copyright for [@Technicalisto](https://www.youtube.com/channel/UC7554uvArdSxL4tlws7Wf8Q)
