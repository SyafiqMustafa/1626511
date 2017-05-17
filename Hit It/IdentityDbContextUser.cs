namespace Hit_It
{
    internal class IdentityDbContext
    {
        private string v;

        public IdentityDbContext(string v)
        {
            this.v = v;
        }

        public string UserName { get; internal set; }
    }
}