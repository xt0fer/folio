package server

// ReadAccountByEmail ...
// func (m *FolioSvc) ReadAccountByEmail(ctx context.Context, in *pb.ReadAccountRequest, email string) (*pb.ReadAccountResponse, error) {
// 	log.Println("(m *FolioSvc) ReadAccountByEmail")
// 	//ListAccount(ctx context.Context, in *pb.ListAccountRequest) (*pb.ListAccountResponse, error)
// 	oper := fmt.Sprintf("email == %v", email)
// 	accts, err := pb.ListAccount(ctx, &pb.ListAccountRequest{Filter: &query.Filtering{oper}})
// 	//nugget, err := pb.DefaultReadAccount(ctx, &pb.Account{Id: in.Id}, m.DB)
// 	if err != nil {
// 		return nil, err
// 	}
// 	if len(accts) > 0 {
// 		return &pb.ReadAccountResponse{
// 			Result: accts[0],
// 		}, nil
// 	}
// 	return nil, errors.New("unable to find the account")
// }
