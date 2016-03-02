@foreach($pages as $page)
    <li class="{{ Request::is($page->uriWildcard) ? 'active' : '' }} {{ count($page->children) ? ($page->isChild() ? 'dropdown-submenu' : 'dropdown disabled') : '' }}" {{ count($page->children) ? ($page->isChild() ? 'dropdown-submenu' : "data-toggle=dropdown") : '' }}>
        <a href="{{ url($page->uri) }}{!! ($page->uri == '/' ? '#home':'') !!}">
            {{ $page->title }}

            @if(count($page->children))
                <span class="caret {{ $page->isChild() ? 'right' : '' }}"></span>
            @endif
        </a>

        @if(count($page->children))
            <ul class="dropdown-menu">
                @include('partials.navigation', ['pages' => $page->children])
            </ul>
        @endif
    </li>
@endforeach