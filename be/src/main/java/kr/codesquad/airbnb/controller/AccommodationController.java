package kr.codesquad.airbnb.controller;

import java.util.Collections;
import java.util.List;
import kr.codesquad.airbnb.dto.ReserveFormResponseDto;
import kr.codesquad.airbnb.dto.ReserveRequestDto;
import kr.codesquad.airbnb.dto.SearchQueryResponseDto;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/accommodation")
public class AccommodationController {

    @GetMapping("/search/{query}")
    public ResponseEntity<List<SearchQueryResponseDto>> getSearchResult(@PathVariable String query) {
        return ResponseEntity.ok(Collections.singletonList(new SearchQueryResponseDto()));
    }

    @GetMapping("/reserve/{accommodationId}")
    public ResponseEntity<ReserveFormResponseDto> getReserveForm(@PathVariable String accommodationId) {
        return ResponseEntity.ok(new ReserveFormResponseDto());
    }

    @PostMapping("/reserve/{accommodationId}")
    public HttpStatus postReservation(@RequestBody ReserveRequestDto requestDto) {
        return HttpStatus.OK;
    }

}