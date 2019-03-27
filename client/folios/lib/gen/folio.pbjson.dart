///
//  Generated code. Do not modify.
//  source: folio.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const PingStatus$json = const {
  '1': 'PingStatus',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'Status', '3': 2, '4': 1, '5': 9, '10': 'Status'},
  ],
};

const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'Email', '3': 2, '4': 1, '5': 9, '10': 'Email'},
    const {'1': 'Firstname', '3': 3, '4': 1, '5': 9, '10': 'Firstname'},
    const {'1': 'Lastname', '3': 4, '4': 1, '5': 9, '10': 'Lastname'},
    const {'1': 'Thumbnail', '3': 14, '4': 1, '5': 11, '6': '.folio.Asset', '10': 'Thumbnail'},
  ],
  '7': const {},
};

const CreateUserRequest$json = const {
  '1': 'CreateUserRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.folio.User', '10': 'payload'},
  ],
};

const CreateUserResponse$json = const {
  '1': 'CreateUserResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.User', '10': 'result'},
  ],
};

const ReadUserRequest$json = const {
  '1': 'ReadUserRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const ReadUserResponse$json = const {
  '1': 'ReadUserResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.User', '10': 'result'},
  ],
};

const UpdateUserRequest$json = const {
  '1': 'UpdateUserRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.folio.User', '10': 'payload'},
    const {'1': 'gerogeri_gegege', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'gerogeriGegege'},
  ],
};

const UpdateUserResponse$json = const {
  '1': 'UpdateUserResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.User', '10': 'result'},
  ],
};

const DeleteUserRequest$json = const {
  '1': 'DeleteUserRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const DeleteUsersRequest$json = const {
  '1': 'DeleteUsersRequest',
  '2': const [
    const {'1': 'ids', '3': 1, '4': 3, '5': 13, '10': 'ids'},
  ],
};

const DeleteUserResponse$json = const {
  '1': 'DeleteUserResponse',
};

const ListUserResponse$json = const {
  '1': 'ListUserResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.folio.User', '10': 'results'},
    const {'1': 'page_info', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.PageInfo', '10': 'pageInfo'},
  ],
};

const ListUserRequest$json = const {
  '1': 'ListUserRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const Share$json = const {
  '1': 'Share',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'friend', '3': 2, '4': 1, '5': 11, '6': '.folio.User', '10': 'friend'},
    const {'1': 'Thumbnail', '3': 14, '4': 1, '5': 11, '6': '.folio.Asset', '10': 'Thumbnail'},
    const {'1': 'folios', '3': 6, '4': 3, '5': 11, '6': '.folio.Folio', '8': const {}, '10': 'folios'},
  ],
  '7': const {},
};

const CreateShareRequest$json = const {
  '1': 'CreateShareRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.folio.Share', '10': 'payload'},
  ],
};

const CreateShareResponse$json = const {
  '1': 'CreateShareResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Share', '10': 'result'},
  ],
};

const ReadShareRequest$json = const {
  '1': 'ReadShareRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const ReadShareResponse$json = const {
  '1': 'ReadShareResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Share', '10': 'result'},
  ],
};

const UpdateShareRequest$json = const {
  '1': 'UpdateShareRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.folio.Share', '10': 'payload'},
    const {'1': 'gerogeri_gegege', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'gerogeriGegege'},
  ],
};

const UpdateShareResponse$json = const {
  '1': 'UpdateShareResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Share', '10': 'result'},
  ],
};

const DeleteShareRequest$json = const {
  '1': 'DeleteShareRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const DeleteSharesRequest$json = const {
  '1': 'DeleteSharesRequest',
  '2': const [
    const {'1': 'ids', '3': 1, '4': 3, '5': 13, '10': 'ids'},
  ],
};

const DeleteShareResponse$json = const {
  '1': 'DeleteShareResponse',
};

const ListShareResponse$json = const {
  '1': 'ListShareResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.folio.Share', '10': 'results'},
    const {'1': 'page_info', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.PageInfo', '10': 'pageInfo'},
  ],
};

const ListShareRequest$json = const {
  '1': 'ListShareRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const Tag$json = const {
  '1': 'Tag',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'Kind', '3': 2, '4': 1, '5': 13, '10': 'Kind'},
    const {'1': 'Label', '3': 3, '4': 1, '5': 9, '10': 'Label'},
    const {'1': 'Desc', '3': 4, '4': 1, '5': 9, '10': 'Desc'},
    const {'1': 'folios', '3': 6, '4': 3, '5': 11, '6': '.folio.Folio', '8': const {}, '10': 'folios'},
    const {'1': 'Thumbnail', '3': 14, '4': 1, '5': 11, '6': '.folio.Asset', '10': 'Thumbnail'},
  ],
  '7': const {},
};

const CreateTagRequest$json = const {
  '1': 'CreateTagRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.folio.Tag', '10': 'payload'},
  ],
};

const CreateTagResponse$json = const {
  '1': 'CreateTagResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Tag', '10': 'result'},
  ],
};

const ReadTagRequest$json = const {
  '1': 'ReadTagRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const ReadTagResponse$json = const {
  '1': 'ReadTagResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Tag', '10': 'result'},
  ],
};

const UpdateTagRequest$json = const {
  '1': 'UpdateTagRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.folio.Tag', '10': 'payload'},
    const {'1': 'gerogeri_gegege', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'gerogeriGegege'},
  ],
};

const UpdateTagResponse$json = const {
  '1': 'UpdateTagResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Tag', '10': 'result'},
  ],
};

const DeleteTagRequest$json = const {
  '1': 'DeleteTagRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const DeleteTagsRequest$json = const {
  '1': 'DeleteTagsRequest',
  '2': const [
    const {'1': 'ids', '3': 1, '4': 3, '5': 13, '10': 'ids'},
  ],
};

const DeleteTagResponse$json = const {
  '1': 'DeleteTagResponse',
};

const ListTagResponse$json = const {
  '1': 'ListTagResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.folio.Tag', '10': 'results'},
    const {'1': 'page_info', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.PageInfo', '10': 'pageInfo'},
  ],
};

const ListTagRequest$json = const {
  '1': 'ListTagRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const Folio$json = const {
  '1': 'Folio',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'UUID', '3': 2, '4': 1, '5': 9, '10': 'UUID'},
    const {'1': 'Name', '3': 3, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'Desc', '3': 4, '4': 1, '5': 9, '10': 'Desc'},
    const {'1': 'Assets', '3': 6, '4': 3, '5': 11, '6': '.folio.Asset', '10': 'Assets'},
    const {'1': 'Notes', '3': 7, '4': 3, '5': 11, '6': '.folio.Note', '10': 'Notes'},
    const {'1': 'Owner', '3': 8, '4': 1, '5': 11, '6': '.folio.User', '10': 'Owner'},
    const {'1': 'tags', '3': 10, '4': 3, '5': 11, '6': '.folio.Tag', '8': const {}, '10': 'tags'},
    const {'1': 'shares', '3': 11, '4': 3, '5': 11, '6': '.folio.Share', '8': const {}, '10': 'shares'},
    const {'1': 'Thumbnail', '3': 14, '4': 1, '5': 11, '6': '.folio.Asset', '10': 'Thumbnail'},
  ],
  '7': const {},
};

const CreateFolioRequest$json = const {
  '1': 'CreateFolioRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.folio.Folio', '10': 'payload'},
  ],
};

const CreateFolioResponse$json = const {
  '1': 'CreateFolioResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Folio', '10': 'result'},
  ],
};

const ReadFolioRequest$json = const {
  '1': 'ReadFolioRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const ReadFolioResponse$json = const {
  '1': 'ReadFolioResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Folio', '10': 'result'},
  ],
};

const UpdateFolioRequest$json = const {
  '1': 'UpdateFolioRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.folio.Folio', '10': 'payload'},
    const {'1': 'gerogeri_gegege', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'gerogeriGegege'},
  ],
};

const UpdateFolioResponse$json = const {
  '1': 'UpdateFolioResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Folio', '10': 'result'},
  ],
};

const DeleteFolioRequest$json = const {
  '1': 'DeleteFolioRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const DeleteFoliosRequest$json = const {
  '1': 'DeleteFoliosRequest',
  '2': const [
    const {'1': 'ids', '3': 1, '4': 3, '5': 13, '10': 'ids'},
  ],
};

const DeleteFolioResponse$json = const {
  '1': 'DeleteFolioResponse',
};

const ListFolioResponse$json = const {
  '1': 'ListFolioResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.folio.Folio', '10': 'results'},
    const {'1': 'page_info', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.PageInfo', '10': 'pageInfo'},
  ],
};

const ListFolioRequest$json = const {
  '1': 'ListFolioRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const Asset$json = const {
  '1': 'Asset',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'folio', '3': 3, '4': 1, '5': 11, '6': '.folio.Folio', '10': 'folio'},
    const {'1': 'UUID', '3': 4, '4': 1, '5': 9, '10': 'UUID'},
    const {'1': 'Path', '3': 5, '4': 1, '5': 9, '10': 'Path'},
    const {'1': 'blob', '3': 20, '4': 1, '5': 12, '10': 'blob'},
    const {'1': 'Thumbnail', '3': 14, '4': 1, '5': 11, '6': '.folio.Asset', '10': 'Thumbnail'},
  ],
  '7': const {},
};

const CreateAssetRequest$json = const {
  '1': 'CreateAssetRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.folio.Asset', '10': 'payload'},
  ],
};

const CreateAssetResponse$json = const {
  '1': 'CreateAssetResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Asset', '10': 'result'},
  ],
};

const ReadAssetRequest$json = const {
  '1': 'ReadAssetRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const ReadAssetResponse$json = const {
  '1': 'ReadAssetResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Asset', '10': 'result'},
  ],
};

const UpdateAssetRequest$json = const {
  '1': 'UpdateAssetRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.folio.Asset', '10': 'payload'},
    const {'1': 'gerogeri_gegege', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'gerogeriGegege'},
  ],
};

const UpdateAssetResponse$json = const {
  '1': 'UpdateAssetResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Asset', '10': 'result'},
  ],
};

const DeleteAssetRequest$json = const {
  '1': 'DeleteAssetRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const DeleteAssetsRequest$json = const {
  '1': 'DeleteAssetsRequest',
  '2': const [
    const {'1': 'ids', '3': 1, '4': 3, '5': 13, '10': 'ids'},
  ],
};

const DeleteAssetResponse$json = const {
  '1': 'DeleteAssetResponse',
};

const ListAssetResponse$json = const {
  '1': 'ListAssetResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.folio.Asset', '10': 'results'},
    const {'1': 'page_info', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.PageInfo', '10': 'pageInfo'},
  ],
};

const ListAssetRequest$json = const {
  '1': 'ListAssetRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

const Note$json = const {
  '1': 'Note',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    const {'1': 'Name', '3': 3, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'Note', '3': 4, '4': 1, '5': 9, '10': 'Note'},
    const {'1': 'folio', '3': 6, '4': 1, '5': 11, '6': '.folio.Folio', '10': 'folio'},
    const {'1': 'Thumbnail', '3': 14, '4': 1, '5': 11, '6': '.folio.Asset', '10': 'Thumbnail'},
  ],
  '7': const {},
};

const CreateNoteRequest$json = const {
  '1': 'CreateNoteRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.folio.Note', '10': 'payload'},
  ],
};

const CreateNoteResponse$json = const {
  '1': 'CreateNoteResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Note', '10': 'result'},
  ],
};

const ReadNoteRequest$json = const {
  '1': 'ReadNoteRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const ReadNoteResponse$json = const {
  '1': 'ReadNoteResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Note', '10': 'result'},
  ],
};

const UpdateNoteRequest$json = const {
  '1': 'UpdateNoteRequest',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.folio.Note', '10': 'payload'},
    const {'1': 'gerogeri_gegege', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'gerogeriGegege'},
  ],
};

const UpdateNoteResponse$json = const {
  '1': 'UpdateNoteResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.folio.Note', '10': 'result'},
  ],
};

const DeleteNoteRequest$json = const {
  '1': 'DeleteNoteRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

const DeleteNotesRequest$json = const {
  '1': 'DeleteNotesRequest',
  '2': const [
    const {'1': 'ids', '3': 1, '4': 3, '5': 13, '10': 'ids'},
  ],
};

const DeleteNoteResponse$json = const {
  '1': 'DeleteNoteResponse',
};

const ListNoteResponse$json = const {
  '1': 'ListNoteResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.folio.Note', '10': 'results'},
    const {'1': 'page_info', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.PageInfo', '10': 'pageInfo'},
  ],
};

const ListNoteRequest$json = const {
  '1': 'ListNoteRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.infoblox.api.Filtering', '10': 'filter'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 11, '6': '.infoblox.api.Sorting', '10': 'orderBy'},
    const {'1': 'fields', '3': 3, '4': 1, '5': 11, '6': '.infoblox.api.FieldSelection', '10': 'fields'},
    const {'1': 'paging', '3': 4, '4': 1, '5': 11, '6': '.infoblox.api.Pagination', '10': 'paging'},
  ],
};

