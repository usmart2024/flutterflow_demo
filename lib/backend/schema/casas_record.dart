import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CasasRecord extends FirestoreRecord {
  CasasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _valor = castToType<double>(snapshotData['valor']);
    _status = castToType<int>(snapshotData['status']);
    _foto = snapshotData['foto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('casas');

  static Stream<CasasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CasasRecord.fromSnapshot(s));

  static Future<CasasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CasasRecord.fromSnapshot(s));

  static CasasRecord fromSnapshot(DocumentSnapshot snapshot) => CasasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CasasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CasasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CasasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CasasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCasasRecordData({
  String? nome,
  String? descricao,
  double? valor,
  int? status,
  String? foto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'descricao': descricao,
      'valor': valor,
      'status': status,
      'foto': foto,
    }.withoutNulls,
  );

  return firestoreData;
}

class CasasRecordDocumentEquality implements Equality<CasasRecord> {
  const CasasRecordDocumentEquality();

  @override
  bool equals(CasasRecord? e1, CasasRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.descricao == e2?.descricao &&
        e1?.valor == e2?.valor &&
        e1?.status == e2?.status &&
        e1?.foto == e2?.foto;
  }

  @override
  int hash(CasasRecord? e) => const ListEquality()
      .hash([e?.nome, e?.descricao, e?.valor, e?.status, e?.foto]);

  @override
  bool isValidKey(Object? o) => o is CasasRecord;
}
