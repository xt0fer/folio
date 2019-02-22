package server

import (
	"context"
	"log"
	
	pb "../server/pb"
)

type FolioSvc struct {
	pb.FolioServiceDefaultServer
}

// CreateUser ...
func (m *FolioSvc) CreateUser(ctx context.Context, in *pb.CreateUserRequest) (*pb.CreateUserResponse, error) {
	log.Println("(m *FolioSvc) CreateUser")
	nugget, err := pb.DefaultCreateUser(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.CreateUserResponse{
		Result: nugget,
	}, nil
}

// ReadUser ...
func (m *FolioSvc) ReadUser(ctx context.Context, in *pb.ReadUserRequest) (*pb.ReadUserResponse, error) {
	log.Println("(m *FolioSvc) ReadUser")
	nugget, err := pb.DefaultReadUser(ctx, &pb.User{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ReadUserResponse{
		Result: nugget,
	}, nil
}

// UpdateUser ...
func (m *FolioSvc) UpdateUser(ctx context.Context, in *pb.UpdateUserRequest) (*pb.UpdateUserResponse, error) {
	log.Println("(m *FolioSvc) UpdateUser")
	nugget, err := pb.DefaultStrictUpdateUser(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.UpdateUserResponse{
		Result: nugget,
	}, nil
}

// DeleteUser ...
func (m *FolioSvc) DeleteUser(ctx context.Context, in *pb.DeleteUserRequest) (*pb.DeleteUserResponse, error) {
	log.Println("(m *FolioSvc) DeleteUser")
	err := pb.DefaultDeleteUser(ctx, &pb.User{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.DeleteUserResponse{
		
	}, nil
}

// ListUser ...
func (m *FolioSvc) ListUser(ctx context.Context, in *pb.ListUserRequest) (*pb.ListUserResponse, error) {
	log.Println("(m *FolioSvc) ListUser")
	nugget, err := pb.DefaultListUser(ctx, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ListUserResponse{
		Results: nugget,
	}, nil
}

// CreateFolio ...
func (m *FolioSvc) CreateFolio(ctx context.Context, in *pb.CreateFolioRequest) (*pb.CreateFolioResponse, error) {
	log.Println("(m *FolioSvc) CreateFolio")
	nugget, err := pb.DefaultCreateFolio(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.CreateFolioResponse{
		Result: nugget,
	}, nil
}

// ReadFolio ...
func (m *FolioSvc) ReadFolio(ctx context.Context, in *pb.ReadFolioRequest) (*pb.ReadFolioResponse, error) {
	log.Println("(m *FolioSvc) ReadFolio")
	nugget, err := pb.DefaultReadFolio(ctx, &pb.Folio{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ReadFolioResponse{
		Result: nugget,
	}, nil
}

// UpdateFolio ...
func (m *FolioSvc) UpdateFolio(ctx context.Context, in *pb.UpdateFolioRequest) (*pb.UpdateFolioResponse, error) {
	log.Println("(m *FolioSvc) UpdateFolio")
	nugget, err := pb.DefaultStrictUpdateFolio(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.UpdateFolioResponse{
		Result: nugget,
	}, nil
}

// DeleteFolio ...
func (m *FolioSvc) DeleteFolio(ctx context.Context, in *pb.DeleteFolioRequest) (*pb.DeleteFolioResponse, error) {
	log.Println("(m *FolioSvc) DeleteFolio")
	err := pb.DefaultDeleteFolio(ctx, &pb.Folio{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.DeleteFolioResponse{
		
	}, nil
}

// ListFolio ...
func (m *FolioSvc) ListFolio(ctx context.Context, in *pb.ListFolioRequest) (*pb.ListFolioResponse, error) {
	log.Println("(m *FolioSvc) ListFolio")
	nugget, err := pb.DefaultListFolio(ctx, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ListFolioResponse{
		Results: nugget,
	}, nil
}

// CreateTag ...
func (m *FolioSvc) CreateTag(ctx context.Context, in *pb.CreateTagRequest) (*pb.CreateTagResponse, error) {
	log.Println("(m *FolioSvc) CreateTag")
	nugget, err := pb.DefaultCreateTag(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.CreateTagResponse{
		Result: nugget,
	}, nil
}

// ReadTag ...
func (m *FolioSvc) ReadTag(ctx context.Context, in *pb.ReadTagRequest) (*pb.ReadTagResponse, error) {
	log.Println("(m *FolioSvc) ReadTag")
	nugget, err := pb.DefaultReadTag(ctx, &pb.Tag{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ReadTagResponse{
		Result: nugget,
	}, nil
}

// UpdateTag ...
func (m *FolioSvc) UpdateTag(ctx context.Context, in *pb.UpdateTagRequest) (*pb.UpdateTagResponse, error) {
	log.Println("(m *FolioSvc) UpdateTag")
	nugget, err := pb.DefaultStrictUpdateTag(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.UpdateTagResponse{
		Result: nugget,
	}, nil
}

// DeleteTag ...
func (m *FolioSvc) DeleteTag(ctx context.Context, in *pb.DeleteTagRequest) (*pb.DeleteTagResponse, error) {
	log.Println("(m *FolioSvc) DeleteTag")
	err := pb.DefaultDeleteTag(ctx, &pb.Tag{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.DeleteTagResponse{
		
	}, nil
}

// ListTag ...
func (m *FolioSvc) ListTag(ctx context.Context, in *pb.ListTagRequest) (*pb.ListTagResponse, error) {
	log.Println("(m *FolioSvc) ListTag")
	nugget, err := pb.DefaultListTag(ctx, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ListTagResponse{
		Results: nugget,
	}, nil
}

// CreateNote ...
func (m *FolioSvc) CreateNote(ctx context.Context, in *pb.CreateNoteRequest) (*pb.CreateNoteResponse, error) {
	log.Println("(m *FolioSvc) CreateNote")
	nugget, err := pb.DefaultCreateNote(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.CreateNoteResponse{
		Result: nugget,
	}, nil
}

// ReadNote ...
func (m *FolioSvc) ReadNote(ctx context.Context, in *pb.ReadNoteRequest) (*pb.ReadNoteResponse, error) {
	log.Println("(m *FolioSvc) ReadNote")
	nugget, err := pb.DefaultReadNote(ctx, &pb.Note{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ReadNoteResponse{
		Result: nugget,
	}, nil
}

// UpdateNote ...
func (m *FolioSvc) UpdateNote(ctx context.Context, in *pb.UpdateNoteRequest) (*pb.UpdateNoteResponse, error) {
	log.Println("(m *FolioSvc) UpdateNote")
	nugget, err := pb.DefaultStrictUpdateNote(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.UpdateNoteResponse{
		Result: nugget,
	}, nil
}

// DeleteNote ...
func (m *FolioSvc) DeleteNote(ctx context.Context, in *pb.DeleteNoteRequest) (*pb.DeleteNoteResponse, error) {
	log.Println("(m *FolioSvc) DeleteNote")
	err := pb.DefaultDeleteNote(ctx, &pb.Note{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.DeleteNoteResponse{
		
	}, nil
}

// ListNote ...
func (m *FolioSvc) ListNote(ctx context.Context, in *pb.ListNoteRequest) (*pb.ListNoteResponse, error) {
	log.Println("(m *FolioSvc) ListNote")
	nugget, err := pb.DefaultListNote(ctx, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ListNoteResponse{
		Results: nugget,
	}, nil
}

// CreateAsset ...
func (m *FolioSvc) CreateAsset(ctx context.Context, in *pb.CreateAssetRequest) (*pb.CreateAssetResponse, error) {
	log.Println("(m *FolioSvc) CreateAsset")
	nugget, err := pb.DefaultCreateAsset(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.CreateAssetResponse{
		Result: nugget,
	}, nil
}

// ReadAsset ...
func (m *FolioSvc) ReadAsset(ctx context.Context, in *pb.ReadAssetRequest) (*pb.ReadAssetResponse, error) {
	log.Println("(m *FolioSvc) ReadAsset")
	nugget, err := pb.DefaultReadAsset(ctx, &pb.Asset{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ReadAssetResponse{
		Result: nugget,
	}, nil
}

// UpdateAsset ...
func (m *FolioSvc) UpdateAsset(ctx context.Context, in *pb.UpdateAssetRequest) (*pb.UpdateAssetResponse, error) {
	log.Println("(m *FolioSvc) UpdateAsset")
	nugget, err := pb.DefaultStrictUpdateAsset(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.UpdateAssetResponse{
		Result: nugget,
	}, nil
}

// DeleteAsset ...
func (m *FolioSvc) DeleteAsset(ctx context.Context, in *pb.DeleteAssetRequest) (*pb.DeleteAssetResponse, error) {
	log.Println("(m *FolioSvc) DeleteAsset")
	err := pb.DefaultDeleteAsset(ctx, &pb.Asset{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.DeleteAssetResponse{
		
	}, nil
}

// ListAsset ...
func (m *FolioSvc) ListAsset(ctx context.Context, in *pb.ListAssetRequest) (*pb.ListAssetResponse, error) {
	log.Println("(m *FolioSvc) ListAsset")
	nugget, err := pb.DefaultListAsset(ctx, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ListAssetResponse{
		Results: nugget,
	}, nil
}

// CreateShare ...
func (m *FolioSvc) CreateShare(ctx context.Context, in *pb.CreateShareRequest) (*pb.CreateShareResponse, error) {
	log.Println("(m *FolioSvc) CreateShare")
	nugget, err := pb.DefaultCreateShare(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.CreateShareResponse{
		Result: nugget,
	}, nil
}

// ReadShare ...
func (m *FolioSvc) ReadShare(ctx context.Context, in *pb.ReadShareRequest) (*pb.ReadShareResponse, error) {
	log.Println("(m *FolioSvc) ReadShare")
	nugget, err := pb.DefaultReadShare(ctx, &pb.Share{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ReadShareResponse{
		Result: nugget,
	}, nil
}

// UpdateShare ...
func (m *FolioSvc) UpdateShare(ctx context.Context, in *pb.UpdateShareRequest) (*pb.UpdateShareResponse, error) {
	log.Println("(m *FolioSvc) UpdateShare")
	nugget, err := pb.DefaultStrictUpdateShare(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.UpdateShareResponse{
		Result: nugget,
	}, nil
}

// DeleteShare ...
func (m *FolioSvc) DeleteShare(ctx context.Context, in *pb.DeleteShareRequest) (*pb.DeleteShareResponse, error) {
	log.Println("(m *FolioSvc) DeleteShare")
	err := pb.DefaultDeleteShare(ctx, &pb.Share{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.DeleteShareResponse{
		
	}, nil
}

// ListShare ...
func (m *FolioSvc) ListShare(ctx context.Context, in *pb.ListShareRequest) (*pb.ListShareResponse, error) {
	log.Println("(m *FolioSvc) ListShare")
	nugget, err := pb.DefaultListShare(ctx, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ListShareResponse{
		Results: nugget,
	}, nil
}


