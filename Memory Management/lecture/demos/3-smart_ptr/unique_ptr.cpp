#include <cassert>
#include <iostream>
#include <memory>

std::unique_ptr<int> pass_through(std::unique_ptr<int> p)
{
    return p;
}

int main(int argc, char *argv[])
{
    std::cout << "1) Unique ownership semantics demo\n";
    {
        // Create a (uniquely owned) resource
        std::unique_ptr<int> p = std::make_unique<int>();

        // Transfer ownership to `pass_through`,
        // which in turn transfers ownership back through the return value
        std::unique_ptr<int> q = pass_through(std::move(p));

        // `p` is now in a moved-from 'empty' state, equal to `nullptr`
        //assert(p == nullptr);
        assert(p);
    }

    return 0;
}

