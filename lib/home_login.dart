import 'package:flutter/material.dart';


//void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stocash',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigation(),
    );
  }
}

//Bottom Navigation class with home, portfolio, search, learn and profile screens

class Navigation extends StatefulWidget{
  @override
  _NavigationState createState() => _NavigationState(); 

}

class _NavigationState extends State<Navigation>{

String hexString = "18dbc6";

int _selectedIndex = 0;

List<Widget> _widgetOptions = [Home(), Portfolio(), Search(), Learn(), Profile()];

void _onItemTap(int index){
  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SoSuCo'),
        backgroundColor: Color(int.parse("0xff${hexString}")),
      ),
      body: IndexedStack(children: [
         
         Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      )

      ],) 
      
      ,
      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home
          ),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.corporate_fare
          ),
          label: 'Portfolio'
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search_off_sharp
          ),
          label: 'Search'
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.featured_play_list_outlined 
          ),
          label: 'learn'
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person
          ),
          label: 'Profile'
        ),

      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
      selectedItemColor: Color(int.parse("0xff${hexString}")),
      unselectedItemColor: Colors.black,
      ),
      
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}

//Home Screen
class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState(); 

}

class _HomeState extends State<Home>{

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(child: Text('Home'),),
    );
  }
}

//Portfolio Screen

class Portfolio extends StatefulWidget{
  @override
  _PortfolioState createState() => _PortfolioState(); 

}


class _PortfolioState extends State<Portfolio> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(child: Text('Portfolio'),),
    );
  }
}

//Search Screen
class Search extends StatefulWidget{
  @override
  _SearchState createState() => _SearchState(); 

}

class _SearchState extends State<Search> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(child: Text('Search'),),
    );
  }
}

//Learn Screen
class Learn extends StatefulWidget{
  @override
  _LearnState createState() => _LearnState(); 

}
class _LearnState extends State<Learn> {

  @override
  Widget build(BuildContext context) {
    
    //Return ListView with widgets
       return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Card(child:ListTile(
          title: Text("What are Shares?"),
          
          leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
          trailing: Icon(Icons.arrow_forward))),
        Card(child:ListTile( title: Text("What are Dividends?"), leading: CircleAvatar(backgroundImage: NetworkImage("https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")), trailing: Icon(Icons.arrow_forward))),
        Card(child:ListTile( title: Text("Who is a ShareHolder?"), leading:  CircleAvatar(backgroundImage: NetworkImage("https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")), trailing: Icon(Icons.arrow_forward))),
        Card(child:ListTile( title: Text("What is a Stock Market?"), leading:  CircleAvatar(backgroundImage: NetworkImage("https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")), trailing: Icon(Icons.arrow_forward))),
      
       Card(child:ListTile(
          title: Text("When can i start investing?"),
          
          leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
          trailing: Icon(Icons.arrow_forward))),

          Card(child:ListTile(
          title: Text("Benefits of having Shares?"),
          
          leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
          trailing: Icon(Icons.arrow_forward))),

          Card(child:ListTile(
          title: Text("How can i sell my Shares?"),
          
          leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
          trailing: Icon(Icons.arrow_forward))),

          Card(child:ListTile(
          title: Text("What are Shares?"),
          
          leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
          trailing: Icon(Icons.arrow_forward))),
      ],
    );
    
  }
}

//Profile Screen
class Profile extends StatefulWidget{
  @override
  _ProfileState createState() => _ProfileState(); 

}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Profile'),),
    );
  }
}






