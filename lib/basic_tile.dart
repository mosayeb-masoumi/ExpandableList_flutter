class BasicTile {
  final String title;
  final List<BasicTile> tiles;

  BasicTile({
    required this.title,
    this.tiles = const [],
  });
}

//fake data for basic tile model

final basicTiles = <BasicTile>[
  BasicTile(
    title: "Frouts",
    tiles: [
      BasicTile(title: "Apple"),
      BasicTile(title: "Orange"),
      BasicTile(title: "Banana"),
    ],
  ),
  BasicTile(
    title: "Continent",
    tiles: [
      BasicTile(
          title: "Asia" ,
          tiles: [
            BasicTile(title: "Iran"),
            BasicTile(title: "India"),
            BasicTile(title: "Iraq"),
          ]
      ),

      BasicTile(
          title: "Europe" ,
          tiles: [
            BasicTile(title: "France"),
            BasicTile(title: "Italy"),
            BasicTile(title: "England"),
          ]
      ),

    ],
  ),
];
