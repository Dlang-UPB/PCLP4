#include <iostream>
#include <memory>

int gun(int* p)
{
    /* do stuff with p */
    /* smth went bad; ret False */
    return 0;
}

int is_ok(std::shared_ptr<int> p)
{
    /* do stuff with p */
    /* smth went bad; ret False */
    std::cout << "Shared ptr is used by " << p.use_count() << " references\n";
    return 0;
}

int main(int argc, char *argv[])
{
    std::shared_ptr<int> p = std::make_shared<int>(10);

    std::cout << *p << std::endl;

    if (!is_ok(p)) {
        printf("Aborting..\n");
        return -1;
    }

    return 0;
}

