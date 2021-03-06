import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../cakeDetail.dart';

class ProdutoVertical extends StatelessWidget {

  final int idProduto;
  final String nomeProduto;
  final String categoriaProduto;
  final double precoProduto;
  final String imgProduto;

  const ProdutoVertical({Key? key, required this.nomeProduto,
    required this.categoriaProduto, required this.precoProduto,
    required this.imgProduto, required this.idProduto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CakeDetail(
                nomeProduto: nomeProduto,
                categoriaProduto: categoriaProduto,
                imgProduto: imgProduto,
                precoProduto: precoProduto,
                idProduto: idProduto)
              )
          );
        },
        child: Container(
          width: 176,
          height: 242,
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Container(
                width: 176,
                height: 235,
                padding: const EdgeInsets.only(top: 160, left: 22),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   Text(
                      nomeProduto,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      categoriaProduto,
                      style: const TextStyle(
                          fontSize: 12,
                          color: textSecondaryColor
                      ),
                    ),
                    Text(
                      'R\$' + precoProduto.toStringAsPrecision(4),
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 161,
                    height: 161,
                    decoration: BoxDecoration(
                      color: Color(0xff64CBC7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: urlImagem + '/bolos/' + imgProduto,
                    ),
                  ),
              )
            ],
          ),
        )
    );
  }
}
