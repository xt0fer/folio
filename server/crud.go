package server

import (
	"context"
	"log"

	pb "github.com/kristofer/frpc/pb"
)

type AccountSvcTioga struct {
	pb.AccountServiceDefaultServer
}

// CreateAccount ...
func (m *AccountSvcTioga) CreateAccount(ctx context.Context, in *pb.CreateAccountRequest) (*pb.CreateAccountResponse, error) {
	log.Println("(m *AccountSvcTioga) CreateAccount")
	nugget, err := pb.DefaultCreateAccount(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.CreateAccountResponse{
		Result: nugget,
	}, nil
}

// ReadAccount ...
func (m *AccountSvcTioga) ReadAccount(ctx context.Context, in *pb.ReadAccountRequest) (*pb.ReadAccountResponse, error) {
	log.Println("(m *AccountSvcTioga) ReadAccount")
	nugget, err := pb.DefaultReadAccount(ctx, &pb.Account{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ReadAccountResponse{
		Result: nugget,
	}, nil
}

// UpdateAccount ...
func (m *AccountSvcTioga) UpdateAccount(ctx context.Context, in *pb.UpdateAccountRequest) (*pb.UpdateAccountResponse, error) {
	log.Println("(m *AccountSvcTioga) UpdateAccount")
	nugget, err := pb.DefaultStrictUpdateAccount(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.UpdateAccountResponse{
		Result: nugget,
	}, nil
}

// DeleteAccount ...
func (m *AccountSvcTioga) DeleteAccount(ctx context.Context, in *pb.DeleteAccountRequest) (*pb.DeleteAccountResponse, error) {
	log.Println("(m *AccountSvcTioga) DeleteAccount")
	err := pb.DefaultDeleteAccount(ctx, &pb.Account{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.DeleteAccountResponse{}, nil
}

// ListAccount ...
func (m *AccountSvcTioga) ListAccount(ctx context.Context, in *pb.ListAccountRequest) (*pb.ListAccountResponse, error) {
	log.Println("(m *AccountSvcTioga) ListAccount")
	nugget, err := pb.DefaultListAccount(ctx, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ListAccountResponse{
		Results: nugget,
	}, nil
}

// CreateUser ...
func (m *AccountSvcTioga) CreateUser(ctx context.Context, in *pb.CreateUserRequest) (*pb.CreateUserResponse, error) {
	log.Println("(m *AccountSvcTioga) CreateUser")
	nugget, err := pb.DefaultCreateUser(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.CreateUserResponse{
		Result: nugget,
	}, nil
}

// ReadUser ...
func (m *AccountSvcTioga) ReadUser(ctx context.Context, in *pb.ReadUserRequest) (*pb.ReadUserResponse, error) {
	log.Println("(m *AccountSvcTioga) ReadUser")
	nugget, err := pb.DefaultReadUser(ctx, &pb.User{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ReadUserResponse{
		Result: nugget,
	}, nil
}

// UpdateUser ...
func (m *AccountSvcTioga) UpdateUser(ctx context.Context, in *pb.UpdateUserRequest) (*pb.UpdateUserResponse, error) {
	log.Println("(m *AccountSvcTioga) UpdateUser")
	nugget, err := pb.DefaultStrictUpdateUser(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.UpdateUserResponse{
		Result: nugget,
	}, nil
}

// DeleteUser ...
func (m *AccountSvcTioga) DeleteUser(ctx context.Context, in *pb.DeleteUserRequest) (*pb.DeleteUserResponse, error) {
	log.Println("(m *AccountSvcTioga) DeleteUser")
	err := pb.DefaultDeleteUser(ctx, &pb.User{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.DeleteUserResponse{}, nil
}

// ListUser ...
func (m *AccountSvcTioga) ListUser(ctx context.Context, in *pb.ListUserRequest) (*pb.ListUserResponse, error) {
	log.Println("(m *AccountSvcTioga) ListUser")
	nugget, err := pb.DefaultListUser(ctx, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ListUserResponse{
		Results: nugget,
	}, nil
}

// CreateFolio ...
func (m *AccountSvcTioga) CreateFolio(ctx context.Context, in *pb.CreateFolioRequest) (*pb.CreateFolioResponse, error) {
	log.Println("(m *AccountSvcTioga) CreateFolio")
	nugget, err := pb.DefaultCreateFolio(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.CreateFolioResponse{
		Result: nugget,
	}, nil
}

// ReadFolio ...
func (m *AccountSvcTioga) ReadFolio(ctx context.Context, in *pb.ReadFolioRequest) (*pb.ReadFolioResponse, error) {
	log.Println("(m *AccountSvcTioga) ReadFolio")
	nugget, err := pb.DefaultReadFolio(ctx, &pb.Folio{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ReadFolioResponse{
		Result: nugget,
	}, nil
}

// UpdateFolio ...
func (m *AccountSvcTioga) UpdateFolio(ctx context.Context, in *pb.UpdateFolioRequest) (*pb.UpdateFolioResponse, error) {
	log.Println("(m *AccountSvcTioga) UpdateFolio")
	nugget, err := pb.DefaultStrictUpdateFolio(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.UpdateFolioResponse{
		Result: nugget,
	}, nil
}

// DeleteFolio ...
func (m *AccountSvcTioga) DeleteFolio(ctx context.Context, in *pb.DeleteFolioRequest) (*pb.DeleteFolioResponse, error) {
	log.Println("(m *AccountSvcTioga) DeleteFolio")
	err := pb.DefaultDeleteFolio(ctx, &pb.Folio{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.DeleteFolioResponse{}, nil
}

// ListFolio ...
func (m *AccountSvcTioga) ListFolio(ctx context.Context, in *pb.ListFolioRequest) (*pb.ListFolioResponse, error) {
	log.Println("(m *AccountSvcTioga) ListFolio")
	nugget, err := pb.DefaultListFolio(ctx, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ListFolioResponse{
		Results: nugget,
	}, nil
}

// CreateArchive ...
func (m *AccountSvcTioga) CreateArchive(ctx context.Context, in *pb.CreateArchiveRequest) (*pb.CreateArchiveResponse, error) {
	log.Println("(m *AccountSvcTioga) CreateArchive")
	nugget, err := pb.DefaultCreateArchive(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.CreateArchiveResponse{
		Result: nugget,
	}, nil
}

// ReadArchive ...
func (m *AccountSvcTioga) ReadArchive(ctx context.Context, in *pb.ReadArchiveRequest) (*pb.ReadArchiveResponse, error) {
	log.Println("(m *AccountSvcTioga) ReadArchive")
	nugget, err := pb.DefaultReadArchive(ctx, &pb.Archive{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ReadArchiveResponse{
		Result: nugget,
	}, nil
}

// UpdateArchive ...
func (m *AccountSvcTioga) UpdateArchive(ctx context.Context, in *pb.UpdateArchiveRequest) (*pb.UpdateArchiveResponse, error) {
	log.Println("(m *AccountSvcTioga) UpdateArchive")
	nugget, err := pb.DefaultStrictUpdateArchive(ctx, in.Payload, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.UpdateArchiveResponse{
		Result: nugget,
	}, nil
}

// DeleteArchive ...
func (m *AccountSvcTioga) DeleteArchive(ctx context.Context, in *pb.DeleteArchiveRequest) (*pb.DeleteArchiveResponse, error) {
	log.Println("(m *AccountSvcTioga) DeleteArchive")
	err := pb.DefaultDeleteArchive(ctx, &pb.Archive{Id: in.Id}, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.DeleteArchiveResponse{}, nil
}

// ListArchive ...
func (m *AccountSvcTioga) ListArchive(ctx context.Context, in *pb.ListArchiveRequest) (*pb.ListArchiveResponse, error) {
	log.Println("(m *AccountSvcTioga) ListArchive")
	nugget, err := pb.DefaultListArchive(ctx, m.DB)
	if err != nil {
		return nil, err
	}
	return &pb.ListArchiveResponse{
		Results: nugget,
	}, nil
}
