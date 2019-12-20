using System.ServiceModel;

namespace Service
{
    class UserConection
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public OperationContext operationContext { get; set; }
    }
}
