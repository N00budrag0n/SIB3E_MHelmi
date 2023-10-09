import 'package:flutter/material.dart';
import 'package:db_sql/item.dart';

class EntryForm extends StatefulWidget{
  final Item? item;
  EntryForm(this.item);

  @override
  EntryFormState createState()=>EntryFormState(this.item);
}

class EntryFormState extends State<EntryForm>{
  Item? item;
  EntryFormState(this.item);

  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController kodeBarangController = TextEditingController();
  TextEditingController stokController = TextEditingController();

  @override
  Widget build(BuildContext context){
    // condition
    if(item != null){
      nameController.text = item!.name;
      priceController.text = item!.price.toString();
      kodeBarangController.text = item!.kodeBarang;
      stokController.text = item!.stok.toString();
    }

    return Scaffold(
      appBar: AppBar(
        title: item == null ? Text("Tambah") : Text("Ubah"),
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left:10.0, right:10.0),
        child: ListView(
          children: <Widget>[
            // nama barang
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nama Barang',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                onChanged: (value){
                  // 
                },
              ),
            ),

            // harga barang
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Harga',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                onChanged: (value){
                  
                },
              ),
            ),

            // kode barang
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: kodeBarangController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Kode Barang',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                onChanged: (value){
                  // 
                },
              ),
            ),

            // stok barang
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: stokController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Stok Barang',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                onChanged: (value){
                  
                },
              ),
            ),

            // button
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                children: <Widget>[
                  // simpan
                  Expanded(
                    child: ElevatedButton(
                      child: Text('Save', textScaleFactor: 1.5,),
                      onPressed: (){
                        if(item == null){
                          // add
                          item = Item(nameController.text, int.parse(priceController.text), kodeBarangController.text, int.parse(stokController.text));
                        } else {
                          // update
                          item!.name = nameController.text;
                          item!.price = int.parse(priceController.text);
                          item!.kodeBarang = kodeBarangController.text;
                          item!.stok = int.parse(stokController.text);
                        }
                        // return
                        Navigator.pop(context, item);
                      },
                    )
                  ),

                  // batal
                  Expanded(
                    child: ElevatedButton(
                      child: Text('Cancel', textScaleFactor: 1.5,),
                      onPressed: (){
                        // return
                        Navigator.pop(context, null);
                      },
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}