package server

import (
	"context"
	"log"
	
	pb "../../pb"
)


type FolioSvc struct {
	pb.AccountServiceDefaultServer
}

// CreateAccount ...
func (m *FolioSvc) CreateAccount(ctx context.Context, in *pb.CreateAccountRequest) (*pb.CreateAccountResponse, error) {
	log.Println("(m *FolioSvc) CreateAccount")
	nugget, err := pb.DefaultCreateAccount(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.CreateAccountResponse{
		Result: nugget,
	}, nil
}

// ReadAccount ...
func (m *FolioSvc) ReadAccount(ctx context.Context, in *pb.ReadAccountRequest) (*pb.ReadAccountResponse, error) {
	log.Println("(m *FolioSvc) ReadAccount")
	nugget, err := pb.DefaultReadAccount(ctx, &pb.Account{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ReadAccountResponse{
		Result: nugget,
	}, nil
}

// UpdateAccount ...
func (m *FolioSvc) UpdateAccount(ctx context.Context, in *pb.UpdateAccountRequest) (*pb.UpdateAccountResponse, error) {
	log.Println("(m *FolioSvc) UpdateAccount")
	nugget, err := pb.DefaultStrictUpdateAccount(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.UpdateAccountResponse{
		Result: nugget,
	}, nil
}

// DeleteAccount ...
func (m *FolioSvc) DeleteAccount(ctx context.Context, in *pb.DeleteAccountRequest) (*pb.DeleteAccountResponse, error) {
	log.Println("(m *FolioSvc) DeleteAccount")
	err := pb.DefaultDeleteAccount(ctx, &pb.Account{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.DeleteAccountResponse{
		
	}, nil
}

// ListAccount ...
func (m *FolioSvc) ListAccount(ctx context.Context, in *pb.ListAccountRequest) (*pb.ListAccountResponse, error) {
	log.Println("(m *FolioSvc) ListAccount")
	nugget, err := pb.DefaultListAccount(ctx, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ListAccountResponse{
		Results: nugget,
	}, nil
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

// CreateArchive ...
func (m *FolioSvc) CreateArchive(ctx context.Context, in *pb.CreateArchiveRequest) (*pb.CreateArchiveResponse, error) {
	log.Println("(m *FolioSvc) CreateArchive")
	nugget, err := pb.DefaultCreateArchive(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.CreateArchiveResponse{
		Result: nugget,
	}, nil
}

// ReadArchive ...
func (m *FolioSvc) ReadArchive(ctx context.Context, in *pb.ReadArchiveRequest) (*pb.ReadArchiveResponse, error) {
	log.Println("(m *FolioSvc) ReadArchive")
	nugget, err := pb.DefaultReadArchive(ctx, &pb.Archive{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ReadArchiveResponse{
		Result: nugget,
	}, nil
}

// UpdateArchive ...
func (m *FolioSvc) UpdateArchive(ctx context.Context, in *pb.UpdateArchiveRequest) (*pb.UpdateArchiveResponse, error) {
	log.Println("(m *FolioSvc) UpdateArchive")
	nugget, err := pb.DefaultStrictUpdateArchive(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.UpdateArchiveResponse{
		Result: nugget,
	}, nil
}

// DeleteArchive ...
func (m *FolioSvc) DeleteArchive(ctx context.Context, in *pb.DeleteArchiveRequest) (*pb.DeleteArchiveResponse, error) {
	log.Println("(m *FolioSvc) DeleteArchive")
	err := pb.DefaultDeleteArchive(ctx, &pb.Archive{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.DeleteArchiveResponse{
		
	}, nil
}

// ListArchive ...
func (m *FolioSvc) ListArchive(ctx context.Context, in *pb.ListArchiveRequest) (*pb.ListArchiveResponse, error) {
	log.Println("(m *FolioSvc) ListArchive")
	nugget, err := pb.DefaultListArchive(ctx, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ListArchiveResponse{
		Results: nugget,
	}, nil
}


